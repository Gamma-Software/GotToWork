![docker pull](https://img.shields.io/docker/pulls/valentinrudloff/pingbot.svg)

# PingBot
Deploy and Run quickly a ping bot (with Telegram) to monitor the connection with a IoT device

## Prerequisites
Docker installed on your machine
Telegram account with a Bot

## Telegram bot
Follow the Telegram bot creation page to create your own [bot](https://core.telegram.org/bots)

## Configuration
You need to create two environment variables. This can be done as such

docker run -d --env BOT_TOKEN=<BOT_TOKEN> --env BOT_ID=<BOT_ID> --restart unless-stopped valentinrudloff/pingbot:v1.0.0 <ip_adress_to_monitor>