#!/bin/bash
#/data/data/com.termux/files/usr/bin/bash

# Banner
banner() {
    echo 🧑‍💻 OpenBox v.0.1 🧑‍💻
    echo "[1] 🐘 Apache/PHP"
    echo "[2] 🐍 Python"
    echo "[3] 🦀 Rust"
    echo "[4] 🎨 Zsh/Oh-My-Zsh"
    echo "[5] 🔍 Nmap"
}

# Mensaje de instalacion
mnsg() {
    echo Iniciando proceso de instalación...
    sleep 2
}

# Apache PHP
web() {
#    echo 😵‍💫 No implementado...
    pkg install php-apache -y
}

# zsh
ohZSH() {
    mnsg
    pkg install zsh -y
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    sleep 1
    chsh -s zsh
    echo $SHELL
}

## Inicializa script
case $1 in
1)
    mnsg
    web
    ;;
2)
    # Instalando python
    mnsg
    pkg install python -y
    sleep 1
    python -V
    ;;
3)
    # Instalando rust
    mnsg
    pkg install rust
    #rustc -V
    #web
    ;;
4)
    mnsg
    ohZSH
    ;;
5)
    # Instalando nmap
    mnsg
    pkg install nmap -y
    nmap -V
    ;;
*)
    banner
    ;;
esac
