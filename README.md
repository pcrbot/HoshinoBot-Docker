# Walle-Docker

将 Walle 客户端放入 Docker 中。

## 使用

直接运行 Walle。

```sh
docker run --detach \
  --volume=./walle-data:/data \
  --restart=always \
  --name=walle \
  ghcr.io/he0119/walle-k
```
