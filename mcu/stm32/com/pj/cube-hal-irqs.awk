BEGIN {
	flg = 0;
	vno = 0x40;
	printf("// Header file to convert STM IRQ names to Chibios vector table definitions\n");
	printf("// Generated file, do not edit\n");
}

{
	a=$1;
	if (a == "g_pfnVectors:") flg = 1;
	if (a == ".weak") flg = 0;
	if (flg >= 1) {
		a=$1;
		b=$2;
		if (flg == 2) {
			if (a == ".word") {
				if (b != "0") 
					printf("#define %s Vector%X",b,vno);
				printf("\n");
				vno+=4;
			}
		}
		if ((a == ".word") && (b == "SysTick_Handler")) {
			flg=2;
			vno=0x40;
		};
	}
}

END {
	printf("// End of File\n");
}
