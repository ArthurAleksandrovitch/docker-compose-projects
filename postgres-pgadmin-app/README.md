# Docker Compose: PostgreSQL + pgAdmin

## Описание проекта

Проект демонстрирует запуск PostgreSQL и графического инструмента pgAdmin 4 с помощью Docker Compose.

## Используемые технологии

- Docker Compose
- PostgreSQL 17 Alpine
- pgAdmin 4

## Структура проекта

```text
postgres-pgadmin-app/
├── compose.yaml
├── README.md
└── screenshots/
    ├── 01-pgadmin-databases.png
    ├── 02-pgadmin-users.png
    └── 03-pgadmin-containers.png
```

## Запуск проекта

В терминале PowerShell, находясь в папке проекта, выполните:

```powershell
docker compose up -d
docker compose ps
```

## Доступ к pgAdmin

Откройте в браузере: http://localhost:5050

Данные для входа:

- **Email:** `admin@example.com`
- **Password:** `admin`

## Подключение к PostgreSQL

При регистрации сервера в pgAdmin используйте следующие параметры:

| Параметр | Значение |
|---|---|
| Имя сервера | My Local PostgreSQL |
| Host name/address | `postgres-db` |
| Port | `5432` |
| Maintenance database | `mydatabase` |
| Username | `myuser` |
| Password | `mypassword` |

## Проверка работы

В pgAdmin была создана таблица `users`, в которую добавлены две записи.

```sql
SELECT * FROM users;
```

Добавленные записи:

| id | name | email |
|---:|---|---|
| 1 | Ivan Ivanov | ivan@example.com |
| 2 | Maria Petrova | maria@example.com |

## Скриншоты

### 1. Подключённый сервер и список баз данных

![Список баз данных](screenshots/01-pgadmin-databases.png)

### 2. Результат SQL-запроса

![Таблица users](screenshots/02-pgadmin-users.png)

### 3. Работающие контейнеры

![Контейнеры Docker](screenshots/03-pgadmin-containers.png)

## Полезные команды

Просмотр логов pgAdmin:

```powershell
docker compose logs -f pgadmin
```

Просмотр логов PostgreSQL:

```powershell
docker compose logs -f postgres
```

Остановка контейнеров без удаления данных:

```powershell
docker compose stop
```

Повторный запуск:

```powershell
docker compose start
```

Перезапуск:

```powershell
docker compose restart
```

Просмотр конфигурации:

```powershell
docker compose config
```

Остановка и удаление контейнеров и сети:

```powershell
docker compose down
```

**Важно:** данные PostgreSQL хранятся в Docker volume `postgres_data`. Команда `docker compose down -v` удалит этот том вместе с данными базы данных.

## Результат

PostgreSQL успешно запущен в Docker-контейнере, pgAdmin доступен через браузер, подключение к базе данных проверено выполнением SQL-запроса.
