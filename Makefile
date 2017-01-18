#
#  Copyright (c) 2010 - 2017, Intel Corporation.
#
#  This program is free software; you can redistribute it and/or modify it
#  under the terms and conditions of the GNU General Public License,
#  version 2, as published by the Free Software Foundation.
#
#  This program is distributed in the hope it will be useful, but WITHOUT
#  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
#  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
#  more details.
#


ifeq ($(EXTERNAL_BUILD), 1)
MODSRC := $(shell pwd)
ccflags-y += -I$(MODSRC)/include/
else
srcpath := $(srctree)
endif

obj-y				+= drivers/media/pci/intel-ipu4/
obj-y				+= drivers/media/platform/intel-ipu4/
obj-y				+= drivers/media/i2c/
obj-$(CONFIG_VIDEO_CRLMODULE)	+= drivers/media/i2c/crlmodule/

ifeq ($(EXTERNAL_BUILD), 1)
all:
	$(MAKE) -C $(KERNEL_SRC) M=$(MODSRC) modules

modules_install:
	$(MAKE) -C $(KERNEL_SRC) M=$(MODSRC) modules_install

clean:
	$(MAKE) -C $(KERNEL_SRC) M=$(MODSRC) clean

endif
