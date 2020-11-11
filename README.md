# HoshinoBot-Docker

## 构建

下载 Dockerfile 后 `docker build . -t hoshinobot`

## 启动

方法1：直接运行（后续修改麻烦）

```sh
docker run -d --name hoshino hoshinobot
```

方法2：取出源码后运行（方便后续修改）

```sh
# 取出源码
docker run --rm -v `pwd`:/tmp/Hoshino hoshinobot mv /HoshinoBot/ /tmp/Hoshino/Hoshino
# 启动
docker run -d -v `pwd`/Hoshino:/HoshinoBot --name hoshino hoshinobot
```

注意：后续添加插件如需使用 pip，应当使用：`docker exec hoshino pip3`
