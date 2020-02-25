rke-all-in-one
=========

Scope of this role is to setup RKE cluster in single node with controlplan, etcd and worker.

Requirements
------------

It works only with CentOS 7 hosts.

Role Variables
--------------

rke_version: v1.0.4

Dependencies
------------

[tools role](https://github.com/kkurpanik/nginx-nosql-poc/tree/master/setup/ansible/roles/tools)

Example Playbook
----------------

``` yaml
- hosts: servers
  roles:
    - tools
    - rke-all-in-one
```

License
-------

MIT

Author Information
------------------

kkurpanik@gmail.com
