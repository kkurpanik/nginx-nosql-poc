# nginx-nosql-poc
This repository contains some deployments and scripts to quickly build a LAB environment showing how to expose CouchDB and MongoDB over HTTP.
## LAB setup and deployment
1. Clone this repository on the host with ansible available
2. Update `setup/ansible/inventory` file with proper server IPs
3. Go to `setup` directory
4. Run `setup-lab.sh` script from ansible host
5. Run `deploy-lab.sh` script from nginx host and `nginx-nosql-poc/setup` directory
6. Run `start-demo.sh up` from nginx host and `nginx-nosql-poc/setup` directory to start a demo
7. Run `start-demo.sh down` from nginx host and `nginx-nosql-poc/setup` directory to stop a demo
