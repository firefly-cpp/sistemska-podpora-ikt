# Namestitev sistema za upravljanje z izvorno kodo Forgejo

## Prenos Docker slike
```bash
docker pull codeberg.org/forgejo/forgejo:latest
```

## Poganjanje Docker slike
```bash
docker run -p 3000:3000 -v forgejo:/data codeberg.org/forgejo/forgejo:latest
```