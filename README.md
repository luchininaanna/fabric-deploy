# fabric-deploy

Данный репозиторий выполняет совместную сборку [fabric-orderservice](https://github.com/luchininaanna/fabric-orderservice) и [fabric-storeservice](https://github.com/luchininaanna/fabric-storeservice)

## Выполнение сборки сервисов

* Подтянуть код собираемых сервисов
```
make source
```
* Выполнить сборку сервисов
```
make build
```
* Поднять сервисы
```
make up
```
* Остановить сервисы
```
make down
```