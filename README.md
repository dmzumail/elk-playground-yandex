# ELK Playground on Yandex Cloud 🚀

Простой проект для развертывания стека ELK (Elasticsearch, Logstash/Kibana, Beats) на виртуальной машине в Yandex Cloud с использованием Docker.

## 🎯 Цель
Быстрое развертывание среды для сбора, хранения и визуализации логов в учебных целях.

## 🏗 Архитектура
- **Elasticsearch 8.11** — хранение и поиск
- **Kibana 8.11** — визуализация
- **Filebeat 8.11** — сбор логов с контейнеров
- **Docker Compose** — оркестрация

## 🚀 Быстрый старт

### 1. Подготовка ВМ в Yandex Cloud
1. Создайте ВМ (Ubuntu 22.04, 2 vCPU, 4 ГБ RAM, 10 ГБ диск).
2. Откройте порты в Security Group: `22` (SSH), `5601` (Kibana), `9200` (Elasticsearch).
3. Получите публичный IP адрес.

### 2. Установка и запуск
Подключитесь к ВМ по SSH и выполните:

```bash
# Клонируйте репозиторий
git clone https://github.com/dmzumail/elk-playground-yandex.git
cd elk-playground-yandex

# Установите Docker (если не установлен)
chmod +x scripts/setup.sh
sudo ./scripts/setup.sh

# Запустите стек
sudo docker-compose up -d

# Проверьте статус
sudo docker-compose ps