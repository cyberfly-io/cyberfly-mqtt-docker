# Mosquitto Docker container

Running the [Mosquitto message broker](https://mosquitto.org/) in a Docker container based on the lightweight [Alpine Linux](https://alpinelinux.org/) OS.

> Eclipse Mosquitto™ is an open source (EPL/EDL licensed) message broker that implements the MQTT protocol versions 3.1 and 3.1.1. MQTT provides a lightweight method of carrying out messaging using a publish/subscribe model. This makes it suitable for "Internet of Things" messaging such as with low power sensors or mobile devices such as phones, embedded computers or microcontrollers like the Arduino.


## Usage


docker run -p 1883:1883 -p 9001:9001 --name mosquitto cyberfly/cyberfly-mqtt-docker
    

