/hdma.*Instance/ {
	b=$3;
	a=$1;
	sub("hdma_","",a);
	sub(".Instance","",a);
	a=toupper(a);
	sub("UART","USART",a);
	sub(";","",b);
	sub("","",b);
	printf("#define DMA_IRQ_%s %s_IRQHandler\n",a,b);
	split(b,c,"_");
	d1 = substr(c[1], 1, length(c[1])-1);
	n1 = substr(c[1], length(c[1]), 1);
	d2 = substr(c[2], 1, length(c[2])-1);
	n2 = substr(c[2], length(c[2]), 1);
	if (d2 = "Stream") {
		printf("#ifdef DMAv2\n");
		if (n2 <= 3) {
			printf("#define TCIF_%s ((DMA%s->LISR & DMA_LISR_TCIF%d)!=0)\n",a,n1,n2);
			printf("#define CTCIF_%s (DMA%s->LIFCR |= DMA_LIFCR_CTCIF%d)\n",a,n1,n2);
		} else {
			printf("#define TCIF_%s ((DMA%s->HISR & DMA_HISR_TCIF%d)!=0)\n",a,n1,n2);
			printf("#define CTCIF_%s (DMA%s->HIFCR |= DMA_HIFCR_CTCIF%d)\n",a,n1,n2);
		}
		printf("#endif\n");
		printf("#ifdef DMAv1\n");
		printf("#define TCIF_%s ((DMA%s->ISR & DMA_ISR_TCIF%d)!=0)\n",a,n1,n2);
		printf("#define CTCIF_%s (DMA%s->IFCR |= DMA_IFCR_CTCIF%d)\n",a,n1,n2);	
		printf("#endif\n");
		
	};
	printf("\n");
}
