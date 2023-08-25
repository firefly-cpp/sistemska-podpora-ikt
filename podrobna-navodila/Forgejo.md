# Namestitev sistema za upravljanje z izvorno kodo Forgejo

## Prenos Docker slike
```bash
docker pull codeberg.org/forgejo/forgejo:1.20.3-0
```

## Poganjanje Docker slike
```bash
docker run -p 3000:3000 -v forgejo:/data codeberg.org/forgejo/forgejo:1.20.3-0
```

## SSH
Če želite omogočiti dostop SSH, med postopkom inicializacije določite ``SSH Server Point``. Na primer, če želite nastaviti vrata 22:
![SSH Server Port](./slike/ssh-server-port.png)

Po inicializaciji zaženite container z naslednjim ukazom:
```bash
docker run -p 3000:3000 -p 22:22 -v forgejo:/data codeberg.org/forgejo/forgejo:1.20.3-0
```

## Lokalna kopija podatkov
Če želite ustvariti lokalno kopijo podatkov, pridobite ID container-ja z naslednjim ukazom:
```bash
docker ps
```
    
Ko pridobite ID container-ja, za kopiranje podatkov v lokalni imenik zaženite naslednji ukaz:
```bash
docker cp <container_id>:/data /path/to/backup
```