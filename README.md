# OneBot-Impl-Docker

将 OneBot 实现放入 Docker 中。

## [Walle-K](https://github.com/onebot-walle/walle-k)

直接运行 Walle-K。

```sh
docker run --detach \
  --volume=./walle-k-data:/data \
  --restart=always \
  --name=walle-k \
  ghcr.io/he0119/walle-k
```

## [Walle-Q](https://github.com/onebot-walle/walle-q)

直接运行 Walle-Q。

```sh
docker run --detach \
  --volume=./walle-k-data:/data \
  --restart=always \
  --name=walle-q \
  ghcr.io/he0119/walle-q
```

## [Teydacore](https://github.com/teyda/teydacore)

直接运行 Teydacore。

```sh
docker run --detach \
  --env TELEGRAM_TOKEN=token \
  --env ONEBOT_WSR_URL=url \
  --env ONEBOT_WSR_ACCESS_TOKEN=access_token \
  --restart=always \
  --name=teydacore \
  ghcr.io/he0119/teydacore
```

## [NoneBot-All4One](https://github.com/nonepkg/nonebot-plugin-all4one)

将 NoneBot 变成 OneBot 实现。

```sh
docker run --detach \
  --env OBIMPL_CONNECTIONS=[] \
  --env QQGUILD_IS_SANDBOX=false \
  --env QQGUILD_BOTS=[] \
  --restart=always \
  --name=teydacore \
  ghcr.io/he0119/nonebot-all4one
```
