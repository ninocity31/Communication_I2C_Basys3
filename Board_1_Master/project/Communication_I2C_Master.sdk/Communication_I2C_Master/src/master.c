// master.c - Board 1 (I2C master)
// Sends the LEDs and the display value to board 2 over I2C,
// and writes a message to the PC (UART, 9600 baud).

#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xiic_l.h"
#include "sleep.h"

int main()
{
    int slave_address = 0x42;
    unsigned char frame[4];
    int led = 1;
    int counter = 0;
    int nb_bytes;

    init_platform();
    xil_printf("I2C master started\r\n");

    while (1)
    {
        // put the values in the frame (2 bytes for the LEDs, 2 for the display)
        frame[0] = led / 256;
        frame[1] = led % 256;
        frame[2] = counter / 256;
        frame[3] = counter % 256;

        // send the 4 bytes to the slave
        nb_bytes = XIic_Send(XPAR_IIC_0_BASEADDR, slave_address, frame, 4, XIIC_STOP);

        // tell the PC what happened
        if (nb_bytes == 4)
        {
            xil_printf("Send OK : led = %d, counter = %d\r\n", led, counter);
        }
        else
        {
            xil_printf("Error : the slave does not answer\r\n");
        }

        // next LED (1, 2, 4, 8, ... then back to 1)
        led = led * 2;
        if (led > 32768)
        {
            led = 1;
        }

        counter = counter + 1;

        usleep(500000); // wait 0.5 second
    }

    cleanup_platform();
    return 0;
}
