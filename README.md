# subconverter
## 简介
基于 [tindy2013/subconverter](https://github.com/tindy2013/subconverter) 项目的 docker 镜像.仅修改 **分组配置文件** 以解决以下问题.

- **增加**`Netflix，DisneyPlus`等分组.
- **去除**`自动选择 url-test`以解决连接数爆涨问题.
- **修改时区** 镜像默认时区为 Asia/Shanghai

## 示例
[https://sub.ops.ci](https://sub.ops.ci)  
*`前后端示例,可以直接使用.`*

## 更新
- **2022-07-04** 更新`v0.7.2`版 docker 镜像

## 部署
### docker
```shell
docker run  -d --name=subconverter --restart=always -p 25500:25500 stilleshan/subconverter
```

### docker compose
下载 [docker-compose.yml](https://raw.githubusercontent.com/stilleshan/dockerfiles/main/subconverter/docker-compose.yml) 执行以下命令启动:
```shell
docker-compose up -d
```

### subweb + subconverter 合并进阶版
详情查看 [stilleshan/sub](https://github.com/stilleshan/dockerfiles/tree/main/sub)

## 链接
- [stilleshan/sub](https://github.com/stilleshan/dockerfiles/tree/main/sub)
- [stilleshan/subweb](https://github.com/stilleshan/subweb)
- [stilleshan/subconverter](https://github.com/stilleshan/subconverter)
- [tindy2013/subconverter](https://github.com/tindy2013/subconverter)
