FROM alpine:latest

# Install python 
RUN apk add py3-pip

# Install python deps
RUN pip install -r requirements.txt

# Setup env
ENV TG_TOKEN=
ENV TG_CHAT_ID=
ENV TG_MESSAGE_THREAD_ID=

WORKDIR /home/GptBot

COPY . .

ENTRYPOINT ["python","./SciberBot.py"]
