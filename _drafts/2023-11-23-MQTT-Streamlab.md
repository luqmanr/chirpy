---
layout: post
title:  "Combining MQTT w/ Streamlit To Create An Interactive Experience"
tags: [ mqtt, iot, streamlit, python ]
image: https://mqtt.org/assets/img/mqtt-logo-hor-neg.jpg
---

# Heads-Ups!
This tutorial will use docker and docker compose commands. Also, use whatever IDE of your choice to write and deploy the codes below. Setting those up is beyond the scope of this tutorial, though I will mention my preferences throughout this blog post.

# Setting Up The Hardware
Hardware needed for this project are:
- ESP8266 (w/ WiFi)
- HC-SR04
- Jumper Cables
- Bread Board
- Micro USB
- PC / Laptop / Server w/ Docker installed
- Network Router (You can use your home router or even your Phone in Hotspot mode)



# Writing ESP8266 Code
## Reading From Ultrasonic Sensor
## Sending Data to MQTT Server

# Setting up The MQTT Server (If you want to deploy it yourself)
## Mosquitto Server
[Eclipse Mosquitto](https://mosquitto.org/) is an open source MQTT/message broker that's easy to use and deploy. We will deploy the server with docker compose. Just create this service in your docker-compose
yml file

```
# Todo: code here
```

# Writing The Streamlit UI
## Implementing MQTT + Particles
## Making the Particles Interactive
