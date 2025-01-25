# qlcplus-container
This is a container for QLC+ software. It is based on Fedora 40 and uses the latest version of QLC+ 4 software.

## How to use this container
### Docker/ Podman
Start the container:
```bash
$ podman run -p 9999:9999 --name qlcplus ghcr.io/TechnoTUT/qlcplus-container:main
```
Stop the container:
```bash
$ podman kill qlcplus
```
Remove the container:
```bash
$ podman rm qlcplus
```
Connect to the Web UI: http://<SERVER_IP>:9999

### Kubernetes
See [Sample Manifest](./kubernetes_sample.yaml).
You have to change the manifest file. (ex. hostname, port, loadbalancer IP, etc.)
