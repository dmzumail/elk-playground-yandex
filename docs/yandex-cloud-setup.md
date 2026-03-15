# Настройка Yandex Cloud

## 1. Создание ВМ
1. Перейдите в **Compute Cloud** -> **Виртуальные машины**.
2. Нажмите **Создать ВМ**.
3. Параметры:
   - **ОС**: Ubuntu 22.04
   - **CPU/RAM**: 2 vCPU / 4 ГБ RAM
   - **Диск**: 10 ГБ HDD
   - **Публичный IP**: Включить

## 2. Настройка Security Groups
Добавьте правила для входящего трафика:
| Протокол | Порт  | Источник   | Описание      |
|----------|-------|------------|---------------|
| TCP      | 22    | 0.0.0.0/0  | SSH доступ    |
| TCP      | 5601  | 0.0.0.0/0  | Kibana UI     |
| TCP      | 9200  | 0.0.0.0/0  | Elasticsearch |

## 3. Подключение
```bash
ssh ubuntu@<ВАШ_IP>

### 3. Как залить это на GitHub (Команды)

Когда все файлы созданы, выполните эти команды в терминале внутри папки `elk-playground-yandex`:

```bash
# 1. Инициализация репозитория
git init

# 2. Добавление всех файлов
git add .

# 3. Первый коммит
git commit -m "Initial commit: ELK Playground structure"

# 4. Переименование ветки в main
git branch -M main

# 5. Привязка к удаленному репозиторию (замените ВАШ_ЮЗЕР на ваш логин GitHub)
git remote add origin https://github.com/ВАШ_ЮЗЕР/elk-playground-yandex.git

# 6. Отправка на GitHub
git push -u origin main