# Kaj storiti po namestitvi operacijskega sistema Fedora?

V tem dokumentu je zbranih nekaj korakov, ki jih je priporočeno izvesti po namestitvi operacijskega sistema Fedora. Nekaj korakov je dodanih glede na tematiko tega predmeta.

## 1. Posodobitev sistema

Takoj po namestitvi je najprej obvezno zagnati posodobitev sistema distribucije Linuxa. S tem korakom posodobimo pakete in se izognemo potencialnim varnostnim tveganjem. Prav tako je pomembno ta korak ponavljati vsakih nekaj dni.

V Fedori to storimo s preprostim ukazom:

```sh
sudo dnf update
```

## 2. Omogočitev RPM Fusion repozitorijev

Projekt RPM Fusion je repozitorij programske opreme in ponuja dodatne pakete, ki jih Fedora ne vključuje v lastne repozitorije (običajno zaradi neskladnosti s Fedorino definicijo proste programske opreme).

### Repozitorij Free

```sh
sudo dnf install \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
```

### Repozitorij Nonfree

```sh
sudo dnf install \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
```

## 3. Namestitev aplikacije GNOME Tweaks

GNOME Tweaks je majhna aplikacija, ki omogoča dostop do dodatnih možnosti za spreminjanje uporabniške izkušnje z okoljem GNOME. To vključuje vse od razširitev do spreminjanja tem in prilagajanja nastavitev napajanja.

```sh
sudo dnf install gnome-tweaks
```

## 4. Namestitev okolja LaTeX

Okolje LaTeX je sistem za pisanje dokumentov, ki se običajno uporablja za ustvarjanje dokumentov s kompleksnim oblikovanjem, enačbami, slikami, tabelami in referencami, zlasti na akademskih in tehničnih področjih. Uporabnikom omogoča izdelavo visokokakovostnih dokumentov z uporabo označevalnega jezika, ki ločuje vsebino od navodil za oblikovanje. S pomočjo LaTeXa lahko prav tako napišete svoje zaključno delo[^1].

[^1]: https://www.overleaf.com/latex/templates/fakulteta-za-elektrotehniko-racunalnistvo-in-informatiko-univerza-v-mariboru-predloga-zakljucnega-dela/bwqcfkdsfpnm

Za uporabo LaTeXa na Fedora OS potrebujemo:

- TeX Live, ki je obsežna distribucija sistema TeX in sorodnih orodij, ki zagotavlja široko paleto paketov in virov za izdelavo dokumentov in
- IDE za lažje delo.

Distribucijo texlive namestimo na naslednji način:

```sh
sudo dnf install texlive-scheme-full
```

V uradne Fedorine repozitorije je vključenih veliko IDE-jev, med drugimi:

- texmaker, ki ga namestimo na naslednji način:

```sh
sudo dnf install texmaker
```
- ali pa texstudio, ki ga namestimo z ukazom:

```sh
sudo dnf install texstudio
```

## 5. Vzpostavitev okolja Git

Sistem Git na Fedori namestimo na naslednji način:

```sh
sudo dnf install git
```

Dodatno lahko z dvema ukazoma konfiguriramo ime ter email uporabnika.

```sh
git config --global user.name "Ime Priimek"
git config --global user.email "moj@email.com"
```

## Namestitev dodatnih paketov

Poljubni paket, ki obstaja v Fedorinih repozitorijih, prav tako namestimo z
ukazom:

```sh
sudo dnf install IME_PAKETA IME_DRUGEGA_PAKETA
```

Za potrebe predmeta bomo potrebovali naslednje pakete, ki jih lahko namestimo z ukazom:

```sh
sudo dnf install htop nano podman python-sport-activities-features
```

# Dodatno branje

[1] [Fedora: After installation](https://docs.fedoraproject.org/en-US/fedora/f36/install-guide/install/After_Installation/)

[2] [Fedora: RPM Fusion](https://docs.fedoraproject.org/en-US/quick-docs/setup_rpmfusion/)

[3] [NeuroFedora: LaTex](https://docs.fedoraproject.org/en-US/neurofedora/latex/)
