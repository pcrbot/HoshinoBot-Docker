# OneBot-Impl-Docker

将 OneBot 实现放入 Docker 中。

## [Walle-K](https://github.com/onebot-walle/walle-k)

直接运行 Walle-K。

```sh
docker run --detach \
  --volume=./walle-k-data:/data \
  --restart=always \
  --name=walle \
  ghcr.io/he0119/walle-k
```

## [Walle-Q](https://github.com/onebot-walle/walle-q)

直接运行 Walle-Q。

```sh
docker run --detach \
  --volume=./walle-k-data:/data \
  --restart=always \
  --name=walle \
  ghcr.io/he0119/walle-q
```
