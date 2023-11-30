#!/bin/bash
#/data/data/com.termux/files/usr/bin/bash

# Banner
banner() {
    echo 🧑‍💻 OpenBox v.0.1 🧑‍💻
    echo "[1] 🚧 Apache/PHP (NO)"
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
    echo 😵‍💫 No implementado...
    #pkg install php-apache
}

# zsh
ohZSH() {
    mnsg
    pkg install zsh -y
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    chsh -s zsh
    echo $SHELL
    sleep 3
    echo "Editar ~/.zshrc"
    nano ~/.zshrc
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
        pkg install python -y
        python -V
        ;;
    3)
        # Instalando rust
        mnsg
        pkg install rust -y
        rustc -V
        ;;
    4)
        mnsg
        ohZSH
        ;;
    5)
        # Instalando nmap
        mnsg
        pkg install nmap -y
        l nmap -V
        ;;
    *)
        banner
        ;;
    esac
}

main $1
