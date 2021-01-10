#!/bin/env python3
import serial
import sys

def main():
    with serial.Serial("/dev/ttyUSB0") as s:
        while True:
            read = s.readline().decode().strip()
            elements = read.split("|")
            if len(elements) != 3:
                continue

            ident, tmp, hum = elements
            if ident != "ENV-M":
                continue

            print(f"{tmp}℃ {hum}%")
            sys.stdout.flush()


if __name__ == "__main__":
    print("(Connecting...)")
    sys.stdout.flush()
    main()
