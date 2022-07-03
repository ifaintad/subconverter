# subconverter
## 简介
基于 [stilleshan/subconverter](https://github.com/stilleshan/subconverter) 项目的 docker 镜像.仅修改 **分组配置文件** 以解决以下问题.

- **优化**urls.

## 更新
- **2022-07-04** 更新`v0.7.2`版 docker 镜像

## 部署
### docker
```shell
docker run  -d --name=subconverter --restart=always -p 25500:25500 ifaintad/subconverter
```

### docker compose
```yaml

version: "3"
services:
  subconverter:
    image: ifaintad/subconverter
    container_name: subconverter
    #volumes:
      #-path/to/my/base:/base 
    ports:
      - 25500:25500
    restart: always

```


执行以下命令启动:
```shell
docker-compose up -d
```



## 参考
- [tindy2013/subconverter](https://github.com/tindy2013/subconverter)
- [stilleshan/subconverter](https://github.com/stilleshan/subconverter)
