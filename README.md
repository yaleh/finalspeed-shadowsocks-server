# finalspeed-shadowsocks-server

## Example

```bash
    docker run -d --restart=always -e 'SS_PASSWORD=PASSWORD' -p 8338:8338/tcp -p 150:150/udp --name=my-fs-ss yaleh/finalspeed-shadowsocks-server
```

* SS_PASSWORD: password for Shadowsocks
* TCP port mapping for 8338: optional, in case to export a Shadowsocks port without FinalSpeed
* UDP port mapping for 150: required for FinalSpeed

