# Joomla! — Docker Compose

## Описание

Развёртывание Joomla! с использованием Docker Compose и MariaDB.

## Технологии

- Docker и Docker Compose
- Joomla!
- MariaDB 11.5.2
- Именованные Docker volumes
- Отдельная Docker-сеть

## Запуск

Из каталога joomla-docker выполни:

    docker compose up -d

Проверить контейнеры:

    docker compose ps

## Доступ к приложению

- Главная страница: http://localhost:8082
- Панель администратора: http://localhost:8082/administrator

## Остановка

    docker compose down

Обычная остановка сохраняет данные в именованных томах. Не используй команду docker compose down -v, если нужно сохранить данные.

## Скриншоты

### Главная страница Joomla!

![Главная страница Joomla](screenshots/01-joomla-homepage.png)

### Панель администратора

![Панель администратора Joomla](screenshots/02-joomla-admin.png)

### Docker-контейнеры

![Запущенные Docker-контейнеры](screenshots/03-docker-containers.png)

## Результат

Joomla! развёрнута в Docker Compose. Приложение использует MariaDB, а данные сервисов сохраняются в именованных Docker volumes.
