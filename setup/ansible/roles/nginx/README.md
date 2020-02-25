nginx
=========

Scope of this role is to setup nginx instance with configuration required for nginx-nosql-poc demo.

Requirements
------------

It works only with CentOS 7 hosts.

Role Variables
--------------

No variables.

Dependencies
------------

No dependencies.

Example Playbook
----------------

``` yaml
- hosts: servers
  roles:
    - nginx
```

License
-------

MIT

Author Information
------------------

kkurpanik@gmail.com
