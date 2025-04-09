# DevOps Kubernetes Task

## Application Details

Our great static website is broken. Please fix it. 🙏😺

The application is a Nginx server hosted on Kubernetes. You need to set up the Kubernetes "cluster" using k3s and Docker Compose.

## How to Run

1. **Build the Docker images:**

   ```bash
   docker compose build
   ```

2. **Start the K3S containers:**

   ```bash
   docker compose up -d
   ```

3. **Add an entry to your hosts file to route traffic inside the local Kubernetes cluster:**

   ```bash
   echo "127.0.0.1 test-domain.local" | sudo tee -a /etc/hosts
   ```

4. **Access the running container:**

   ```bash
   docker compose exec k3s-server bash
   ```

5. **Apply the Kubernetes manifests using Kustomize inside the container:**

   ```bash
   kubectl apply -k ./manifests/
   ```

   You can modify files in the `manifests` directory and reapply them using the command above.

## How to Test

To verify that the website is functioning correctly, execute the following command on your host machine:

```bash
curl http://test-domain.local/foo
```

This should return the main page of the great website.
