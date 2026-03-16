#!/bin/bash
set -e
echo "Обновление пакетов"
apt update && apt upgrade -y
echo "Установка Docker"
apt install docker.io docker-compose -y
echo "Добавление пользователя в группу docker"
usermod -aG docker ${SUDO_USER:-$USER}
echo "Готово! Перелогиньтесь для применения прав."