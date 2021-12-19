![docker pull](https://img.shields.io/docker/pulls/valentinrudloff/gottowork.svg)

# GotToWork
Deploy and Run quickly a GoToWork (with Telegram) to monitor the connection with a IoT device

## Prerequisites
Docker installed on your machine
Telegram account with a Bot

## Telegram bot
Follow the Telegram bot creation page to create your own [bot](https://core.telegram.org/bots)

## Configuration
You need to create two environment variables. This can be done as such

docker run -d --env-file .env --restart unless-stopped valentinrudloff/gottowork:v1.0.0