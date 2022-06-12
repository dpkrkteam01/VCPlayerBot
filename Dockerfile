FROM python:3.9

WORKDIR /app

COPY requirements.txt /app/

RUN pip4 install -r requirements.txt

COPY . /app

#set a default command

CMD python3 main.py
