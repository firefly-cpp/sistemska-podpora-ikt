# Namestitev Linux Fedora kot drugi OS

### Prenos Linux Fedora

[Prenos Fedore](https://getfedora.org/en/workstation/download/)

### Ustvarjanje zagonskega USB 
Programi, ki nam omogočajo ustvarjanje zagonskega USB iz ISO datoteke:
* [balenaEtcher](https://www.balena.io/etcher/) 
* [Rufus](https://rufus.ie/en/)
* [Fedora Media Writer](https://getfedora.org/en/workstation/download/)

balenaEtcher je sicer priporočena s strani Fedore. Njen uporabniški vmesnik je preprost in enostaven za uporabo. Rufus je enako orodje .

## balenaEtcher

Izbira .iso datoteke
![VirtualBox34](./slike/34.png)
Izbira USB ključka
![VirtualBox35](./slike/35.png)
**Flash!**
![VirtualBox36](./slike/36.png)

## Rufus

* Select - Izbira ISO slike
* Volume Label - Ime USB ključka
* START - Začetek procesa

![VirtualBox37](./slike/37.png)


## Fedora Media Writer

![VirtualBox30](./slike/30.png)
![VirtualBox31](./slike/31.png)
![VirtualBox32](./slike/32.png)
![VirtualBox33](./slike/33.png)

## Ustvarjanje nove zagonske naprave

Dve možnosti:
* ISO Slika Fedora Linux
* Avtomatski prenos iz spleta

![VirtualBox38](./slike/38.png)
![VirtualBox39](./slike/39.png)
![VirtualBox40](./slike/40.png)

### Dodatna informacija:

Ustvarjen usb na windows računalniku ne bo prikazan. Tudi če imamo orodje, ga najverjetneje ne bo pravilno prebralo. USB sicer dela.

![VirtualBox40](./slike/41.png)

## Zagon iz USB
Ko imamo bootable USB, je naslednji korak izbira zagonske naprave. Pri tem je pomembno, da imamo USB ključ vstavljen v računalnik, preden ga ponovno zaženemo.
Katera tipka nas pripelje v Boot Menu je odvisno od modela - Google it.

Nadaljni proces je enak kot pri namestitvi v VM.
[Podrobna navodila za install Fedore](./Fedora.md)