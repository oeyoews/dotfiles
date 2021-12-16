<!--start-->
- sudo groupadd docker
- sudo gpasswd -a $USER docker
- newgrp docker

- sudo systemctl start docker.service

- docker ps
- docker images
- docker run hello-world
- docker pull nginx
- docker run --name mynginx -p 8080:80 -d nginx
  - curl localhost:8080
  - cd /etc/nginx/ && vim nginx.conf
- docker attach <ID>
- docker restart <ID>
- docker rm -f <ID>
- docker port <ID>
- docker logs -f <ID>
- docker run -it archlinux /bin/bash
- docker info
- docker run -itd --name mylinux archlinux /bin/bash && docker attach mylinux

- docker system df
- docker image rm <ID>
- docker images -a
- docker logs <ID> or <ALIDAS>
