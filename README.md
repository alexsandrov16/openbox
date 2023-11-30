# Openbox

Este proyecto fue diseñado para facilitar la instalación de las herramientas que más utilizo en Termux. El script automatiza el proceso de instalación, lo que permite configurar rápidamente un entorno funcional con las herramientas esenciales.

## Funcionalidades

Este script instala las siguientes herramientas:
   - Python
   - Rust
   - PHP    [❌]
   - MySQL  [❌]
   - Apache [❌]
   - Nmap
   - Zsh (Oh-my-zsh)

## Requisitos

- Un dispositivo Android con la app Termux instalada
- Acceso a internet para descargar las herramientas y dependencias necesarias
- Activo los permisos en termux de almacenamiento ```termux-status-storage```
- Repositorios actualizados ```pkg up -y```
- Instalar git y curl ```pkg install git curl -y```


## Instalación

1. Clona este repositorio ejecutando el siguiente comando:
lb ```git clone https://github.com/alexsandrov16/openbox.git```

2. Navega hasta el directorio del proyecto ```cd openbox```

3. Establecer los permisos con ```chmod +x openbox```

4. Ejecuta el script de instalación ```./openbox.sh```

## Licencia

Este proyecto se encuentra bajo la licencia [MIT](https://opensource.org/licenses/MIT). Puedes ver más detalles en el archivo [LICENSE](LICENSE).

## Contacto

Si tienes alguna pregunta o sugerencia, puedes contactarme a través de mi correo electrónico: al3x5.dev@gmail.com.
