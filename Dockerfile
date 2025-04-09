FROM rancher/k3s:v1.32.3-k3s1

## Создаем директорию для манифестов
#RUN mkdir -p /var/lib/rancher/k3s/server/manifests

## Копируем манифесты в контейнер
#COPY ./manifests /var/lib/rancher/k3s/server/manifests/

# Открываем необходимые порты
EXPOSE 6443 80 443

# Запускаем K3s сервер
ENTRYPOINT ["k3s", "server"]
