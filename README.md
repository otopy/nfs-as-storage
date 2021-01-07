# nfs-as-storage

Создание сторедж класса создающего вольюмы на сервере NFS

Create NFS storage class in Kubernetes

## Шаг 1

Клонируем репозиторий

```
    git clone https://github.com/otopy/nfs-as-storage.git
```

## Шаг 2

перейдем в клонированную директорию и создадим сервис аккаунты, кластерные роли и т.д.

```
    kubectl apply -f deploy/....yml
```

## Шаг 3

определимся необходимо ли нам использовать его по умолчанию или же просто подключить в кубернетис для дальнейшего использования.

Если использовать по умолчанию то 

```
    kubectl apply -f deploy/default-sc.yml
```

Или же если просто использовать

```
    kubectl apply -f deploy/class.yml 
```

## Шаг 4

Ну и собственно последний шаг деплой пода который будет выдавать пространства. Необходимо предваительно настройить под свой NFS сервер

```
    kubectl apply -f deploy/deployment.yml
```


https://hub.docker.com/r/otopy/nfs-stor
