from machine import Pin
import utime
import random

LED_PIN = 16
MIN_INTERVAL = 500 # [ms]
MAX_INTERVAL = 3000 # [ms]

led = Pin(LED_PIN, Pin.OUT)

print ("EMLI electricity meter simulator")

while True:
	led.high()
	utime.sleep(0.005)
	led.low()
	interval = random.randint(MIN_INTERVAL , MAX_INTERVAL)
	print ("Blink interval:", interval, "ms")
	utime.sleep(interval/1000.)
