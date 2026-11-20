// slave.c - Board 2 (I2C slave)
// Receives 4 bytes from the master and drives the LEDs and the display.

#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xiic.h"
#include "xintc.h"
#include "xil_exception.h"
#include "xgpio.h"

XIic  iic;      // the I2C block
XIntc intc;     // the interrupt controller
XGpio gpio;     // channel 1 = display, channel 2 = LEDs

unsigned char frame[4];

// these two variables are changed by the interrupts
volatile int master_talks = 0;
volatile int frame_received = 0;

// called when the master calls our address
void master_calls(void *ref, int event)
{
    if (event == XII_MASTER_WRITE_EVENT)
    {
        master_talks = 1;
    }
}

// called when the 4 bytes have arrived
void reception_done(void *ref, int nb)
{
    frame_received = 1;
}

int main()
{
    int slave_address = 0x42;   // same as in the master
    int led;
    int counter;

    init_platform();
    xil_printf("I2C slave started\r\n");

    // LEDs and display
    XGpio_Initialize(&gpio, XPAR_GPIO_0_DEVICE_ID);

    // I2C block in slave mode
    XIic_Initialize(&iic, XPAR_IIC_0_DEVICE_ID);
    XIic_SlaveInclude();
    XIic_SetStatusHandler(&iic, &iic, master_calls);
    XIic_SetRecvHandler(&iic, &iic, reception_done);
    XIic_SetAddress(&iic, XII_ADDR_TO_RESPOND_TYPE, slave_address);

    // interrupts: I2C -> interrupt controller -> MicroBlaze
    XIntc_Initialize(&intc, XPAR_INTC_0_DEVICE_ID);
    XIntc_Connect(&intc, XPAR_INTC_0_IIC_0_VEC_ID, XIic_InterruptHandler, &iic);
    XIntc_Start(&intc, XIN_REAL_MODE);
    XIntc_Enable(&intc, XPAR_INTC_0_IIC_0_VEC_ID);
    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler) XIntc_InterruptHandler, &intc);
    Xil_ExceptionEnable();

    // start the I2C block
    XIic_Start(&iic);

    while (1)
    {
        // wait until the master talks
        while (master_talks == 0)
        {
        }
        master_talks = 0;

        // receive the 4 bytes
        frame_received = 0;
        XIic_SlaveRecv(&iic, frame, 4);
        while (frame_received == 0)
        {
        }

        // put the bytes back together
        led = frame[0] * 256 + frame[1];
        counter = frame[2] * 256 + frame[3];

        // show on the board
        XGpio_DiscreteWrite(&gpio, 2, led);
        XGpio_DiscreteWrite(&gpio, 1, counter);

        xil_printf("Received : led = %d, counter = %d\r\n", led, counter);
    }

    cleanup_platform();
    return 0;
}
