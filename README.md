# pcrbot-Docker

## 获取

直接拉取

```sh
docker pull pcrbot/hoshinobot
```

## 启动

方法1：直接运行（后续修改麻烦）

```sh
docker run -d --name hoshino pcrbot/hoshinobot
```

方法2：取出源码后运行（方便后续修改）

```sh
# 取出源码
docker run --rm -v `pwd`:/tmp/Hoshino pcrbot/hoshinobot mv /HoshinoBot/ /tmp/Hoshino/Hoshino
# 启动
docker run -d -v `pwd`/Hoshino:/HoshinoBot --name hoshino pcrbot/hoshinobot
```

注意：后续添加插件如需使用 pip，应当使用：`docker exec hoshino pip3`
