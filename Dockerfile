FROM alpine/git AS downloader

RUN git clone https://github.com/Ice-Cirno/HoshinoBot.git /tmp/HoshinoBot --depth=1 \
    && wget https://drive.di.he.cn/res.tar.gz -O res.tar.gz \
    && tar zxf res.tar.gz -C /tmp \
    && wget https://drive.di.he.cn/ttc.tar.gz -O ttc.tar.gz \
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
    && pip3 install -r requirements.txt --no-cache-dir

WORKDIR /HoshinoBot

EXPOSE 8080

CMD ["python3", "run.py"]
