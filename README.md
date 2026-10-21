# Проекты Docker Compose

Учебная лабораторная работа по развёртыванию приложений с помощью Docker Compose. Каждый проект размещается в отдельном каталоге общего репозитория и содержит конфигурацию, инструкции по запуску и подтверждение работоспособности.

## Содержание

| № | Проект | Описание | Статус |
|---|---|---|---|
| 1 | [Joomla + MariaDB](joomla-docker/) | Развёртывание CMS Joomla и базы данных MariaDB с помощью Docker Compose | Выполнено |

## 1. Joomla + MariaDB

**Цель:** получить практические навыки контейнеризации веб-приложения и базы данных, настройки сети, постоянного хранения данных и управления сервисами с помощью Docker Compose.

### Используемые технологии

- Docker и Docker Compose
- Joomla CMS
- MariaDB 11.5.2
- YAML

### Структура проекта

```text
docker-compose-projects/
├── README.md
└── joomla-docker/
    ├── compose.yaml
    └── screenshots/
        ├── 01-joomla-homepage.png
        ├── 02-joomla-admin.png
        └── 03-docker-containers.png
```

### Запуск проекта

Перейдите в каталог проекта:

```powershell
cd joomla-docker
```

Проверьте конфигурацию:

```powershell
docker compose config
```

Запустите сервисы:

```powershell
docker compose up -d
```

Проверьте состояние контейнеров:

```powershell
docker compose ps
```

### Доступ к приложению

После запуска и завершения первоначальной настройки Joomla:

- **Сайт:** http://localhost:8082
- **Панель администратора:** http://localhost:8082/administrator

### Архитектура

Проект состоит из двух сервисов:

- **joomla** — веб-приложение Joomla на Apache, доступное через порт `8082` хост-компьютера.
- **db** — сервер базы данных MariaDB.

Сервисы взаимодействуют через общую Docker-сеть `joomla-network`. Данные базы данных и файлы Joomla хранятся в именованных Docker volumes `db_data` и `joomla_data`, поэтому они сохраняются при пересоздании контейнеров.

### Полезные команды

Просмотр логов Joomla:

```powershell
docker compose logs -f joomla
```

Просмотр логов базы данных:

```powershell
docker compose logs -f db
```

Остановка сервисов без удаления контейнеров:

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

Остановка и удаление контейнеров и сети:

```powershell
docker compose down
```

> Команда `docker compose down -v` дополнительно удаляет именованные тома с данными. Используйте её только тогда, когда действительно хотите удалить сохранённые данные проекта.

### Результат выполнения

- Подготовлена конфигурация Docker Compose.
- Запущены контейнеры Joomla и MariaDB.
- Настроено взаимодействие сервисов через Docker-сеть.
- Выполнена первоначальная установка Joomla.
- Проверена доступность сайта и панели администратора.
- Подготовлены скриншоты работающего проекта.

### Скриншоты

**Главная страница Joomla**

![Главная страница Joomla](joomla-docker/screenshots/01-joomla-homepage.png)

**Панель администратора**

![Панель администратора Joomla](joomla-docker/screenshots/02-joomla-admin.png)

**Работающие Docker-контейнеры**

![Состояние Docker-контейнеров](joomla-docker/screenshots/03-docker-containers.png)

---

## Дальнейшие задания

Следующие проекты лабораторной работы будут добавляться в отдельные каталоги этого репозитория и в таблицу содержания по мере выполнения.