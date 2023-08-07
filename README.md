Repo klónozása (abba a mappába, ahol éppen állsz): ```git clone git@github.com:bm971/swapper.git```

**Első használat előtt:**
- ansible.cgf-ben a remote_user megadása (hostokon használt usernév)

**Használat:**
- starter.sh futtatása: ```./starter.sh``` **VAGY** Lásd alias létrehozása lejebb
- host kiválasztása számmal, amelyiken futtatni szeretnéd
- türelmesen vársz, amíg lefut
- a kimenet alapján értékeled az eredményt: used swap kellően csökkent-e és a total swap ugyanannyi marad-e

**Szükséges hozzá** (amennyiben sajátgépről indítod, nem pedig a kszdr jumpról): 
- Publikus kulcsok legyenek feltöltve a hostokra

> Kipróbálva: saját gépről WSL-ből
MobaXterm local terminálban nincs telepítve se a python sem az ansible, ha ezeket megcsináljátok, utána ott is működnie kell

**Futtatás során LEGYÉL TÜRELMES, TÖBB PERCIG IS ELTARTHAT!!!!!!!!!**

Amennyiben további hostokkal szükséges bővíteni:
- inventory_swapper.yaml-ben host nevét be kell írni

Opcionális:

1. alias
- Alias létrehozása: ```alias valami='/path/to/swapper/starter.sh'```
- hozzáadás bashrc-hez:
```sh
nano ~/.bashrc
```
- #Custom aliases rész alá be kell másolni:
```sh
#Custom aliases
alias valami='/path/to/swapper/starter.sh'
```
- menteni, kilépni (Ctrl+x)
- végül:
```sh
source ~/.bashrc
```
> Ennek köszönhetően a 'valami' begépelésével indíthatod a scriptet.

2. Git configolása amennyiben először használod (WSL terminálban)

* `git config --global user.name "Vezetéknév Keresztnév"`

* `git config --global user.email "myemail@email.com"`