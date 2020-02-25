#!/bin/bash

echo "Configuring lab environment..."
ansible-playbook -i ansible/inventory ansible/setup-lab.yaml

