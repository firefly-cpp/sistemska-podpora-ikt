# Namestitev sistema za upravljanje z izvorno kodo Forgejo
Forgejo je opisan kot lahka programska platforma. Forgejo, programska veja Gitee, ki je napisana v jeziku Go, je enostavna za vzdrževanje.  

Ta kratek vodič predstavlja korake, potrebne za uspešen zagon Forgeja z uporabo Dockerja ali Podmana na operacijskem sistemu Fedora Linux.

## Docker
### Prenos slike
```bash
docker pull codeberg.org/forgejo/forgejo:1.20.3-0
```

### Poganjanje slike
```bash
docker run -p 3000:3000 -v forgejo:/data codeberg.org/forgejo/forgejo:1.20.3-0
```

### SSH
Če želite omogočiti dostop SSH, med postopkom inicializacije določite ``SSH Server Point``. Na primer, če želite nastaviti vrata 22:
![SSH Server Port](./slike/ssh-server-port.png)

Po inicializaciji zaženite zabojnika z naslednjim ukazom:
```bash
docker run -p 3000:3000 -p 22:22 -v forgejo:/data codeberg.org/forgejo/forgejo:1.20.3-0
```

### Lokalna kopija podatkov
Če želite ustvariti lokalno kopijo podatkov, pridobite ID zabojnika z naslednjim ukazom:
```bash
docker ps
```
    
Ko pridobite ID zabojnika, za kopiranje podatkov v lokalni imenik zaženite naslednji ukaz:
```bash
docker cp <container_id>:/data /path/to/backup
```

## Podman
### Namestitev Podman
```bash
sudo dnf install podman
```

### Prenos slike
```bash
podman pull codeberg.org/forgejo/forgejo:1.20.3-0
```

### Poganjanje slike
```bash
podman run -p 3000:3000 -v forgejo:/data codeberg.org/forgejo/forgejo:1.20.3-0
```

### SSH
Če želite omogočiti dostop SSH, med postopkom inicializacije določite ``SSH Server Point``. Na primer, če želite nastaviti vrata 22:
![SSH Server Port](./slike/ssh-server-port.png)

Po inicializaciji zaženite zabojnika z naslednjim ukazom:
```bash
podman run -p 3000:3000 -p 22:22 -v forgejo:/data codeberg.org/forgejo/forgejo:1.20.3-0
```

### Lokalna kopija podatkov
Če želite ustvariti lokalno kopijo podatkov, pridobite ID zabojnika z naslednjim ukazom:
```bash
podman ps
```
    
Ko pridobite ID zabojnika, za kopiranje podatkov v lokalni imenik zaženite naslednji ukaz:
```bash
podman cp <container_id>:/data /path/to/backup
```