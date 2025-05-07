PWD := $(shell pwd)
KVERSION := $(shell uname -r)
KERNEL_DIR = /lib/modules/$(KVERSION)

MODULE_NAME = lenovo-wmi-hotkey-utilities
obj-m := $(MODULE_NAME).o

all:
	$(MAKE) -C $(KERNEL_DIR)/build/ M=$(PWD) modules
clean:
	$(MAKE) -C $(KERNEL_DIR)/build/ M=$(PWD) clean

install:
	sudo insmod $(MODULE_NAME).ko

