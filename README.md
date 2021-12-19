![docker pull](https://img.shields.io/docker/pulls/valentinrudloff/gottowork)
![licence](https://img.shields.io/github/license/Gamma-Software/gottowork)
![commit activity](https://img.shields.io/github/last-commit/Gamma-Software/gottowork)

# GotToWork
Deploy and Run quickly a GoToWork (with Telegram) to monitor the connection with a IoT device

## Prerequisites
Docker installed on your machine
Telegram account with a Bot

## Telegram bot
Follow the Telegram bot creation page to create your own [bot](https://core.telegram.org/bots)

## Configuration
You need to create three environment variables.  You can see the .env file example in the repository.

## Execute
You can execute the oneshot application:\
`docker run -d --env-file {abs-or-rel-path-to-env-file} valentinrudloff/gottowork:v1.0.0`\
Or you can execute the application periodically (everyday at 19pm for instance) with cron:\
`{ crontab -l -u $USER; echo '0 19 * * * docker run -d --env-file {abs-path-to-env-file} valentinrudloff/gottowork:v1.0.0'; } | crontab -u $USER -`\
Be careful, the environment variables must be in absolute path.
