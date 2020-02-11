OCD = @echo "set OCD in project makefile"

OCD-jlink := openocd -f interface/jlink.cfg -f target/stm32l4x.cfg
OCD-vsllink := openocd -f interface/vsllink.cfg -c "transport select jtag" -f target/stm32l4x.cfg
OCD-arm-usb-ocd := openocd -f interface/ftdi/olimex-arm-usb-ocd.cfg -f target/stm32l4x.cfg
OCD-stlink := openocd -f interface/stlink-v2.cfg -c "transport select hla_swd" -f target/stm32l4x.cfg
OCD-nucleo := openocd -f interface/stlink-v2-1.cfg -c "transport select hla_swd" -f target/stm32l4x.cfg

OCD_RESET = $(OCD) -c init -c "reset run" -c shutdown
OCD_FLASH = $(OCD) -c init -c "reset halt" \
	         -c "flash write_image erase "$(BIN)" 0x08000000" \
			 -c "reset run" \
	         -c shutdown
OCD_GDB = $(OCD)

