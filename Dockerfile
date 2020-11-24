FROM alpine/git AS downloader

RUN git clone https://github.com/Ice-Cirno/HoshinoBot.git /tmp/HoshinoBot --depth=1 \
    && wget https://download.yobot.win/hoshinobot/res.tar.gz -O res.tar.gz \
    && tar zxf res.tar.gz -C /tmp \
    && wget https://download.yobot.win/hoshinobot/ttc.tar.gz -O ttc.tar.gz \
    && mkdir /tmp/chinese \
    && tar zxf ttc.tar.gz -C /tmp/chinese


FROM python:3.8-slim

ENV PYTHONIOENCODING=utf-8

COPY --from=downloader /tmp/HoshinoBot /HoshinoBot
COPY --from=downloader /tmp/res /HoshinoBot/res
COPY --from=downloader /tmp/chinese /usr/shared/fonts/chinese

RUN cd /HoshinoBot \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo 'Asia/Shanghai' >/etc/timezone \
    && cp -r hoshino/config_example hoshino/config \
    && apt-get update && apt-get install -y --no-install-recommends gcc libc6-dev \
    && pip3 install -r requirements.txt --no-cache-dir \
    && pip3 install msgpack ujson python-Levenshtein --no-cache-dir \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /HoshinoBot

CMD ["python3", "run.py"]
