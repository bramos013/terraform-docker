#!/usr/bin/env bash
#
# Nome do script: validate_requirements.sh
# Descrição: Script para validar os requisitos do sistema
# Autor: Seilinux IT Solutions
# Versão: 1.0
# Data: 24/10/2023

# ------------------------------------------------------------------------ #
# Este script irá validar os requisitos do sistema
#
#  Exemplo:
#      $ sh validate_requirements.sh
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 5.1.18
# ------------------------------------------------------------------------ #
DISTRO=$(cat /etc/os-release | grep -w ID | cut -d'=' -f2 | tr -d '"')
PACKAGES='terraform docker git'

check_packages(){
  for package in $PACKAGES; do
    if command -v $package &>/dev/null; then
      echo "$package já instalado!"
    else
      echo "Pacote não instalado $package..."
      sleep 3
    fi
  done
}

# ------------------------------- EXECUÇÃO --------------------------------#
echo 'Validando requisitos...'
check_packages
