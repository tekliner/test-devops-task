FROM rancher/k3s:v1.32.3-k3s1

EXPOSE 6443 80 443

ENTRYPOINT ["k3s", "server"]
