
# Демо отладки PHP в Docker

## Требования

* расширение [php-debug](https://marketplace.visualstudio.com/items?itemName=xdebug.php-debug) для `VS Code`
* `php7.4`
* `php7.4-xdebug`
* `docker` с плагином `compose`

## Сборка

```bash
docker build -t php:debug .
```

## Запуск
> Чтобы посмотреть отладку в деле необходимо запустить отладчик в `VS Code` и поставить `breakpoint`

Запуск в `Docker`:
```bash
docker run -it \
    --add-host=host.docker.internal:172.17.0.1 \
    --ip=172.17.0.1 \
    --expose 9003 \
    -v $PWD/app.php:/var/www/html/app.php \
    php:debug \
    /bin/bash -c "php -f app.php"
```

Запуск в `Docker Compose`:
```bash
docker compose up
```
