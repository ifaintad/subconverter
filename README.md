# subconverter
## 简介
基于 [MetaCubeX/subconverter](https://github.com/MetaCubeX/subconverter) 项目的 docker 镜像.仅修改 **分组配置文件** 以解决以下问题.
- **增加**`Netflix，DisneyPlus`等分组.
- **去除**`自动选择 url-test`以解决连接数爆涨问题.
- **修改时区** 镜像默认时区为 Asia/Shanghai

## 部署
### docker
```shell
docker run  -d --name=subconverter --restart=always -p 25500:25500 ifaintad/subconverter
```
