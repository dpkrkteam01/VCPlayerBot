FROM nikolaik/python-nodejs:python3.9-nodejs16

WORKDIR  /VCPlayerBot

COPY requirements.txt /requirements.txt

RUN pip3 install -U pip && pip3 install -U -r requirements.txt

COPY start.sh /start.sh

#set a default command

CMD ["/bin/bash", "/start.sh"]
