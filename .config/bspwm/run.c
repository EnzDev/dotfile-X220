#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>


int main(){
	while(1){
		system("xwinwrap -ov -fs -- animate -limit area 32MiB -limit memory 32MiB -limit map 32MiB -window WID \"/home/enzo/Images/gifs/$(ls -1 /home/enzo/Images/gifs | sort -R | head -n1)\"'[1366x768]'");
	}
}
