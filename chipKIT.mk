#
# chipKIT extensions for Arduino Makefile
# System part (i.e. project independent)
#
# Copyright (C) 2011 Christopher Peplin <chris.peplin@rhubarbtech.com>,
# based on work that is Copyright Martin Oldfield
#
# This file is free software; you can redistribute it and/or modify it
# under the terms of the GNU Lesser General Public License as
# published by the Free Software Foundation; either version 2.1 of the
# License, or (at your option) any later version.
#

AVR_TOOLS_PATH = $(ARDUINO_DIR)/hardware/pic32/compiler/pic32-tools/bin
ARDUINO_CORE_PATH = $(ARDUINO_DIR)/hardware/pic32/cores/pic32
ARDUINO_LIB_PATH  = $(ARDUINO_SKETCHBOOK)/libraries
BOARDS_TXT  = $(ARDUINO_DIR)/hardware/pic32/boards.txt

CC_NAME = pic32-gcc
CXX_NAME = pic32-g++
AR_NAME = pic32-ar
OBJDUMP_NAME = pic32-objdump
OBJCOPY_NAME = pic32-objcopy

ifndef AVRDUDE
AVRDUDE = $(ARDUINO_DIR)/hardware/tools/avrdude
endif

ifndef AVRDUDE
AVRDUDE_CONF = $(ARDUINO_DIR)/hardware/tools/avrdude.conf
endif

MCU_FLAG_NAME=mprocessor
EXTRA_CPPFLAGS = -O2  -mno-smart-io -DARDUINO=22 -D_BOARD_MEGA_=

CHIPKIT_MK_PATH := $(dir $(lastword $(MAKEFILE_LIST)))

include $(CHIPKIT_MK_PATH)/Arduino.mk
