OCD = @echo "set OCD in project makefile"

OCD-jlink := openocd -f interface/jlink.cfg -f target/stm32f0x.cfg
OCD-vsllink := openocd -f interface/vsllink.cfg -c "transport select swd" -f target/stm32f0x.cfg
OCD-vsllink-1 := vsprog  -V 'tvcc.set 3301' && $(OCD-vsllink)
OCD-vsllink-2 := vsprog  -V 'tvcc.set 3302' && $(OCD-vsllink)
OCD-arm-usb-ocd := openocd -f interface/ftdi/olimex-arm-usb-ocd.cfg -f target/stm32f0x.cfg
OCD-stlink := openocd -f interface/stlink-v2.cfg -c "transport select hla_swd" -f target/stm32f0x.cfg
OCD-discovery := openocd -f board/stm32f072discovery.cfg
OCD-nucleo := openocd -f board/st_nucleo_f0.cfg

OCD_RESET = $(OCD) -c init -c "reset run" -c shutdown
OCD_FLASH = $(OCD) -c init -c "reset halt" \
	         -c "flash write_image erase "$(BIN)" 0x08000000" \
			 -c "reset run" \
	         -c shutdown
OCD_GDB = $(OCD)

