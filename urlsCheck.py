import sys
import time
import requests

file = open("urls.txt")
urls = file.readlines()

while True:
    for i in urls:
        request = requests.get(i)
        if request.status_code != 200:
            print(f"{i} is unavailable")
            sys.exit()
    print("Status Ok")
    time.sleep(5)
