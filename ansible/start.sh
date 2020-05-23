#!/bin/bash -x

echo "[servers]" > /etc/ansible/hosts

for i in $(seq 1 ${MAX_ANSIBLE_NODES}); do
    sshpass -p "docker" ssh-copy-id -o StrictHostKeyChecking=no "sandboxdocker_ubuntussh_${i}"
    echo "sandboxdocker_ubuntussh_${i}" >> /etc/ansible/hosts
done

echo "" >> /etc/ansible/hosts

tail -f /dev/null

