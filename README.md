# Проекты Docker Compose

Учебная лабораторная работа по развёртыванию приложений с помощью Docker Compose. Каждый проект расположен в отдельном каталоге общего репозитория и содержит конфигурацию, инструкции по запуску и скриншоты работающего приложения.

## Содержание

| № | Проект | Описание | Статус |
|---|---|---|---|
| 1 | [Joomla + MariaDB](joomla-docker/) | Развёртывание CMS Joomla и базы данных MariaDB | Выполнено |
| 2 | [WordPress + MySQL](wordpress/) | Развёртывание CMS WordPress и базы данных MySQL 8.0 | Выполнено |

---

## 1. Joomla + MariaDB

**Цель:** изучить контейнеризацию веб-приложения и базы данных, настройку сети, постоянного хранения данных и управление сервисами Docker Compose.

### Используемые технологии

- Docker и Docker Compose
- Joomla CMS
- MariaDB 11.5.2
- YAML

### Структура проекта

```text
joomla-docker/
├── compose.yaml
├── README.md
└── screenshots/
    ├── 01-joomla-homepage.png
    ├── 02-joomla-admin.png
    └── 03-docker-containers.png
```

### Доступ к приложению

- **Сайт:** http://localhost:8082
- **Панель администратора:** http://localhost:8082/administrator

### Архитектура

Проект состоит из двух сервисов:

- `joomla` — веб-приложение Joomla, доступное через порт `8082`.
- `db` — сервер базы данных MariaDB.

Сервисы взаимодействуют через Docker-сеть `joomla-network`. Для хранения данных используются тома `db_data` и `joomla_data`.

### Запуск

```powershell
cd joomla-docker
docker compose config
docker compose up -d
docker compose ps
```

### Полезные команды

```powershell
docker compose logs -f joomla
docker compose logs -f db
docker compose stop
docker compose start
docker compose restart
docker compose down
```

> Команда `docker compose down -v` удаляет именованные тома и сохранённые в них данные. Используйте её только при необходимости полного сброса проекта.

### Скриншоты

**Главная страница Joomla**

![Главная страница Joomla](https://raw.githubusercontent.com/ArthurAleksandrovitch/docker-compose-projects/main/joomla-docker/screenshots/01-joomla-homepage.png)

**Панель администратора Joomla**

![Панель администратора Joomla](https://raw.githubusercontent.com/ArthurAleksandrovitch/docker-compose-projects/main/joomla-docker/screenshots/02-joomla-admin.png)

**Запущенные Docker-контейнеры**

![Контейнеры Joomla](https://raw.githubusercontent.com/ArthurAleksandrovitch/docker-compose-projects/main/joomla-docker/screenshots/03-docker-containers.png)

---

## 2. WordPress + MySQL

**Цель:** развернуть WordPress с использованием Docker Compose и настроить взаимодействие с базой данных MySQL 8.0.

### Используемые технологии

- Docker и Docker Compose
- WordPress
- MySQL 8.0
- YAML

### Структура проекта

```text
wordpress/
├── compose.yaml
├── README.md
└── screenshots/
    ├── 01-wordpress-homepage.png
    ├── 02-wordpress-admin.png
    └── 03-docker-containers.png
```

### Архитектура

Проект состоит из двух сервисов:

- `wordpress` — веб-приложение WordPress, доступное через порт `8081`.
- `db` — сервер базы данных MySQL 8.0.

Сервисы взаимодействуют через Docker-сеть `wp-network`. Для хранения данных используются тома `db_data` и `wordpress_data`.

### Доступ к приложению

- **Сайт:** http://localhost:8081
- **Панель администратора:** http://localhost:8081/wp-admin/

### Запуск

```powershell
cd wordpress
docker compose config
docker compose up -d
docker compose ps
```

При первом запуске необходимо пройти первоначальную настройку WordPress в браузере и создать учётную запись администратора.

### Полезные команды

```powershell
docker compose logs
docker compose logs wordpress
docker compose logs db
docker compose down
docker compose up -d
```

Команда `docker compose down` останавливает и удаляет контейнеры и сеть проекта, но сохраняет именованные тома с данными.

### Скриншоты

**Главная страница WordPress**

![Главная страница WordPress](https://raw.githubusercontent.com/ArthurAleksandrovitch/docker-compose-projects/main/wordpress/screenshots/01-wordpress-homepage.png)

**Панель администратора WordPress**

![Панель администратора WordPress](https://raw.githubusercontent.com/ArthurAleksandrovitch/docker-compose-projects/main/wordpress/screenshots/02-wordpress-admin.png)

**Запущенные Docker-контейнеры**

![Контейнеры WordPress](https://raw.githubusercontent.com/ArthurAleksandrovitch/docker-compose-projects/main/wordpress/screenshots/03-docker-containers.png)

---

## Результаты работы

- Созданы два независимых проекта Docker Compose.
- Joomla развёрнута с MariaDB.
- WordPress развёрнут с MySQL 8.0.
- Настроены внутренние сети и постоянное хранение данных.
- Подготовлены инструкции по запуску и управлению сервисами.
- Добавлены скриншоты приложений и запущенных контейнеров.

Каждая следующая лабораторная работа будет добавляться в отдельный каталог этого репозитория.
'@ | Set-Content -Path .\README.md -Encoding utf8

