```git clone git@github.com:bm971/swapper.git```

Indítás: ```ansible-playbook swapper.yaml``` Ha kell jelszó a root-hoz akkor ```--ask-become-pass``` kapcsolóval kell indítani

Tesztelve: saját gépről WSL-ből

Szükséges a futtatáshoz: 
ansible.cgf-ben a remote_user megadása

Amennyiben további hostokkal szükséges bővíteni:
inventory_swapper-ben név, IP-t be kell írni

CSAK ANSIBLE