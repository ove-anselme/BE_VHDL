#include "io.h"
#include "sys/alt_stdio.h"
#include "system.h"
#include <unistd.h>
#include <stdio.h>
#include <stdint.h>
//#include "inc/fonction1.h"
#include "fonction6.h"

int main()
{ 
	uint32_t direction, Vitesse;
	uint32_t clk_fpga = 50000000;
	uint32_t frequence = 5000;
	uint32_t duty = 4000;
	uint32_t butee_d = 2500;
	uint32_t butee_g = 2500;
	uint32_t angle_barre, fin_butee_d, fin_butee_g;
	uint16_t pwm;

	alt_putstr("Hello from Nios II!\n");

	IOWR_32DIRECT(AVALON_VERIN_0_BASE,0,1545);
			direction = IORD_32DIRECT(AVALON_VERIN_0_BASE,0);
	//girouette_set_config(0,1,0);
	//anemometre_set_config(0,1,0);

	verin_freq(frequence, duty, clk_fpga);
	verin_butee(butee_d, butee_g);
	verin_config(1,1,0);

	/* Event loop never exits. */
	while (1){

			//Vitesse = anemometre_get_data();
			//direction = girouette_get_data();

			//usleep(1000000);
		//verin_config(1,1,1);
			angle_barre =  read_angle();
			fin_butee_d = read_f_butee_d();
			fin_butee_g = read_f_butee_g();
			pwm = IORD_16DIRECT(AVALON_VERIN_0_BASE, 16) & 0x0002 >>1;

		//IOWR_32DIRECT(AVALON_VERIN_0_BASE,0,1545);
		//direction = IORD_32DIRECT(AVALON_VERIN_0_BASE,0);

			printf("fin de course d  %u\n", fin_butee_d);
			printf("fin de course g %u\n", fin_butee_g);
			printf("angle barre  %u\n", angle_barre);
			printf("pwm  = %u\n", pwm);
			//printf("direction du  vent   = %u\n", direction);

			usleep(100000);
		}

	return 0;
}
