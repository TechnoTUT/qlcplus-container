FROM docker.io/fedora:40

LABEL MAINTAINER="TechnoTUT"

RUN dnf update -y \
 && dnf install 'dnf-command(config-manager)' -y \
 && dnf config-manager --add-repo https://download.opensuse.org/repositories/home:mcallegari79/Fedora_40/home:mcallegari79.repo \
 && dnf install -y qlcplus-qt5 xorg-x11-server-Xvfb \
 && dnf clean all

COPY dotqlcplus /root/.qlcplus

ENTRYPOINT ["/usr/bin/xvfb-run", "qlcplus"] 

CMD ["--debug", "0", "--nowm", "--nogui", "--web", "--open", "/root/.qlcplus/TheUtopiaTone.qxw"]