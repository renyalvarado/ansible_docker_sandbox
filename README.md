# ansible_docker_sandbox
Using Ansible in a Docker sandbox

## Starting environment
```console
user@machine:~$ source config.sh && docker-compose --project-name sandboxdocker up --build --scale ubuntussh=${MAX_ANSIBLE_NODES} --detach
```

## Stoping environment
```console
user@machine:~$ docker-compose --project-name sandboxdocker down
```

## Accesing Ansible container
```console
user@machine:~$ docker exec -it sandboxdocker_ansiblelocal_1 /bin/bash
```

## Testing Ansible using ping
```console
user@machine:~$ docker exec -t sandboxdocker_ansiblelocal_1 /bin/sh -c 'ansible servers -m ping'
sandboxdocker_ubuntussh_2 | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python3"
    },
    "changed": false,
    "ping": "pong"
}
sandboxdocker_ubuntussh_1 | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python3"
    },
    "changed": false,
    "ping": "pong"
}
```

## References
* [How To Install and Use Docker on Ubuntu 20.04](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04)
* [Enable Root Login via SSH In Ubuntu](https://www.liquidweb.com/kb/enable-root-login-via-ssh/)
* [3 Steps to Perform SSH Login Without Password Using ssh-keygen & ssh-copy-id](https://www.thegeekstuff.com/2008/11/3-steps-to-perform-ssh-login-without-password-using-ssh-keygen-ssh-copy-id/)
* [Install specific version of Ansible (2.3.1.0) on Ubuntu 18.04 LTS](https://stackoverflow.com/questions/50538586/install-specific-version-of-ansible-2-3-1-0-on-ubuntu-18-04-lts)
* [Using ssh instead of sftp (Error: sftp transfer mechanism failed)](https://stackoverflow.com/questions/23899028/ansible-failed-to-transfer-file-to-command) 
