TARGET := libsecurec.so

SRC_PATH := ./src
SRCS := $(wildcard $(SRC_PATH)/*.c)

INCLUDE_PATH := -I./include
CFLAGS += -Wall -fPIC -g $(INCLUDE_PATH)
LDFLAGS += -shared

.PHONY: all
all: $(TARGET)

$(TARGET): $(SRCS:.c=.o)
	$(CC) $(LDFLAGS) $^ $(OUTPUT_OPTION)

.PHONY: clean
clean:
	-rm -rf $(SRCS:.c=.o) $(TARGET)
