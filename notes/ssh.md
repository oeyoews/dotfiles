##  First
- systemctl enable sshd --now

- 1: ssh remoteusername@remoteip

- ssh-copy-id <id>
  - copy your public ssh-id to your server, the first time, you need input password
ssh-copy-id 将本机的公钥复制到远程机器的authorized_keys文件中，
- konw-host: record ip

- ssh-keygen -R <server-id>
  - 会出现这些信息是因为，第一次SSH连接时，会生成一个认证，储存在客户端（也就是用SSH连线其他电脑的那个，自己操作的那个）中的known_hosts，但是如果服务器验证过了，认证资讯当然也会更改，服务器端与客户端不同时，就会跳出错误啦～因此，只要把电脑中的认证资讯删除，连线时重新生成，就一切完美啦～要删除很简单，只要在客户端输入一个指令
