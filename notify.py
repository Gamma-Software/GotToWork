import os
import subprocess
import requests
import datetime as dt

def telegram_bot_sendtext(bot_message):
    bot_token = os.getenv('BOT_TOKEN')
    bot_chatID = os.getenv('BOT_ID')
    send_text = 'https://api.telegram.org/bot' + bot_token + '/sendMessage?chat_id=' + bot_chatID + '&parse_mode=Markdown&text=' + bot_message
    response = requests.get(send_text)
    return response.json()

if __name__=="__main__":
    # execute the shell script and return the output
    response = subprocess.Popen(["/bin/sh", "/src/gottowork.sh", os.getenv('GH_USER')] , stdout=subprocess.PIPE).communicate()[0].decode("utf-8")
    # transform the output to a date object
    date = [dt.datetime.strptime(line, "%Y-%m-%dT%H:%M:%SZ") for line in response.splitlines()]
    print(date)
    # if any of the dates is not today or no activity is registered by GH, send a message to get to work
    if all(dt.date.today() != d.date() for d in date) or not date:
        telegram_bot_sendtext("You did not work today. Please commit at least one task.")
