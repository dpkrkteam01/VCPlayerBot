FROM nikolaik/python-nodejs:python3.9-nodejs16
WORKDIR /VCPlayerBot
COPY requirements.txt /requirements.txt
RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /VCPlayerBot
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
