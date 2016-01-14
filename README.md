# Docker-Shadowsocks-libev

## 特点

shadowsocks-libev 有如下特点：

1. 版本更新及时，新功能支持的较多。比如目前最新的1.4.1版就支持UDP、多端口等最新功能。
2. 资源占用极少，内存、CPU占用都非常低，即使是最低档64M内存的VPS都照跑不误。

## 使用

```bash
docker run -d -p 8338:8338 yourtion/shadowsocks 
```

## 配置

+ 指定环境变量 `SS_PASSWORD` 用作连接密码
+ Method: aes-256-cfb (可通过 `SS_METHOD` 指定)
+ Port: 8388
