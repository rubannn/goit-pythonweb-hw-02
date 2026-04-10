# ДЗ Тема: Основи технології  Docker
![Python](https://img.shields.io/badge/Python-3.10-blue)
![Docker](https://img.shields.io/badge/Docker-Compose-informational)
![PostgreSQL](https://img.shields.io/badge/Database-PostgreSQL-336791)

## Завдання
1. Використовуючи команду git clone, клонуйте репозиторій за адресою https://github.com/GoIT-Python-Web/FullStack-Web-Development-hw2. Перейдіть у клонований каталог.
2. Створіть Dockerfile із вказівками для створення образу Docker застосунку.

    > Увага! Використовуйте версію Python 3.10 для правильної роботи застосунку

3. Напишіть docker-compose.yaml з конфігурацією для застосунку та PostgreSQL.
4. Використайте Docker Compose для побудови середовища, команду docker-compose up для запуску середовища.

    >💡 Підказка:
    Внесіть зміни в рядку підключення до бази даних `SQLALCHEMY_DATABASE_URL`: вона знаходиться у файлі `\conf\db`.py. Замість localhost вставте ім'я сервісу PostgreSQL з вашого файлу `docker-compose.yaml`.

```
SQLALCHEMY_DATABASE_URL = f"postgresql+psycopg2://postgres:567234@localhost:5432/hw02"
```


## Makefile — команди

| Команда         | Дія                                      |
|-----------------|------------------------------------------|
| `make build`    | Збірка образу (з кешем)                  |
| `make build-nc` | Збірка образу (без кешу)                 |
| `make run`      | Запуск сервісів на передньому плані      |
| `make rund`     | Запуск сервісів у фоновому режимі        |
| `make stop`     | Зупинка всіх сервісів                    |
| `make restart`  | Перезапуск сервісів                      |
| `make ps`       | Список запущених контейнерів             |
