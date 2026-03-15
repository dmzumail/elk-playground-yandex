#!/bin/bash
set -e

echo "Остановка контейнеров..."
docker-compose down

echo "Удаление томов (данных)..."
docker volume rm $(docker volume ls -q) 2>/dev/null || true

echo "Удаление неиспользуемых образов..."
docker image prune -a -f

echo "Очистка завершена!"