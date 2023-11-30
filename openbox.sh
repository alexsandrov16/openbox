#!/bin/bash
#/data/data/com.termux/files/usr/bin/bash

# Banner
banner() {
    echo 🧑‍💻 OpenBox 🧑‍💻
    echo "[1] 🚧 Apache/PHP (NO)"
    echo "[2] 🐍 Python"
    echo "[3] 🦀 Rust"
    echo "[4] 🎨 Zsh/Oh-My-Zsh"
    echo "[5] 🕵️‍♂️ Nmap"
}

# Mensaje de instalacion
mnsg() {
    echo Iniciando proceso de instalación...
    sleep 2
}

# Apache PHP
web() {
    echo 😵‍💫 No implementado...
    #pkg install php-apache
}

# zsh
ohZSH() {
    mnsg
    pkg install zsh
}

main() {
    echo $1

    case $1 in
    1)
        web
        ;;
    2)
        # Instalando python
        mnsg
        pkg install python
        ;;
    3)
        # Instalando rust
        mnsg
        pkg install rustup
        ;;
    4)
        mnsg
        ohZSH
        ;;
    5)
        # Instalando nmap
        mnsg
        pkg install nmap
        ;;
    *)
        banner
        ;;
    esac
}

main $1
