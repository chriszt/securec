TARGET := test
SRCS := $(wildcard *.c)

CFLAGS += -Wall -g -I../include
LDFLAGS += -L../ -lsecurec

all: $(TARGET)

$(TARGET): $(SRCS:.c=.o)
	$(CC) $^ $(LDFLAGS) $(OUTPUT_OPTION)

.PHONY: clean
clean:
	-rm -rf $(SRCS:.c=.o) $(TARGET)
