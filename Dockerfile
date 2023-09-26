#==============×==============#
#      Created by: Alfa-Ex
#=========× AyiinXd ×=========#

FROM asaaqaa/Uputt-Userbot:buster

RUN git clone -b Uputt-Userbot https://github.com/asaaqaa/Uputt-Userbot /home/uputtuserbot/ \
    && chmod 777 /home/uputtuserbot \
    && mkdir /home/uputtuserbot/bin/

COPY ./sample_config.env ./config.env* /home/uputtuserbot/

WORKDIR /home/uputtuserbot/

RUN pip install -r requirements.txt

CMD ["bash","start"]
