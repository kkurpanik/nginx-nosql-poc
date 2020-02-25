# nginx-nosql-poc
This repository contains some deployments and scripts to quickly build a LAB environment showing how to expose CouchDB and MongoDB over HTTP.
## LAB setup and deployment
1. Clone this repository on the host with ansible available
2. Update setup/ansible/inventory file with proper server IPs
3. Run `setup-lab.sh` script from ansible host
4. Run `deploy-lab.sh` script from nginx host's nginx-nosql-poc directory
5. Run `start-demo.sh up` from nginx host's nginx-nosql-poc directory to start a demo
6. Run `start-demo.sh down` from nginx host's nginx-nosql-poc directory to stop a demo
