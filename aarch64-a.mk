TARGET := libsecurec.a

CC := aarch64-linux-gnu-gcc
AR := aarch64-linux-gnu-ar

SRC_PATH := ./src
SRCS := $(wildcard $(SRC_PATH)/*.c)

INCLUDE_PATH := -I./include
CFLAGS += -Wall -fPIC -g $(INCLUDE_PATH)

.PHONY: all
all: $(TARGET)

$(TARGET): $(SRCS:.c=.o)
	$(AR) rvs $@ $?

.PHONY: clean
clean:
	-rm -rf $(SRCS:.c=.o) $(TARGET)
