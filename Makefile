# the compiler: gcc for C program, define as g++ for C++
CC = arm-linux-gnueabi-g++
# compiler flags:
#  -g    adds debugging information to the executable file
#  -Wall turns on most, but not all, compiler warnings
CFLAGS  = -g -Wall -static -mcpu=cortex-a53 -mfloat-abi=softfp -mfpu=neon-fp-armv8 -mneon-for-64bits -mtune=cortex-a53 -O2

# the build target executable:
TARGET = i2c

all: $(TARGET)

$(TARGET): $(TARGET).c
	$(CC) $(CFLAGS) -o $(TARGET) $(TARGET).c

clean:
	$(RM) $(TARGET)
