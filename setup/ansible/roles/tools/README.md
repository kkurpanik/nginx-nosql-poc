tools
=========

Scope of this role is to install prerequisities for nginx-nosql-poc demo.

Requirements
------------

It works only with CentOS 7 hosts.

Role Variables
--------------

kubectl_version: v1.17.0

Dependencies
------------

No dependencies.

Example Playbook
----------------

``` yaml
- hosts: servers
  roles:
    - tools
```

License
-------

MIT

Author Information
------------------

kkurpanik@gmail.com
