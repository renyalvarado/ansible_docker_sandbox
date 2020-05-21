#!/bin/bash -x

for i in $(seq 1 ${MAX_ANSIBLE_NODES}); do
    sshpass -p "docker" ssh-copy-id -o StrictHostKeyChecking=no "sandboxdocker_ubuntussh_${i}"
done
tail -f /dev/null

