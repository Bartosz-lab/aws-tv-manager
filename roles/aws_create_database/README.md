aws_create_database
=========

Create aws Postgres Aurora Database with redundation.

Requirements
------------

* VPC Network where databse leave
* Subnets that are allowed


Role Variables
--------------

* region:           aws region 
* az:               List of availability zone with their subnets:
    - { name: 'a', cidr: '10.10.0.0/28' }
* vpc_id:           Master Network ID
* instance_type:    RDS instance type
* db_port:          Database port
* db_username:      Database username
* db_password:      Database password
* allowed_subnets:  List of allowed subnets
    - '10.10.1.0/24'

Return Variable
---------------
  db:
    username:         Database username
    password:         Database password
    port:             Database port
    reader_endpoint:  Database reader endpoint
    endpoint:         Database writer endpoint


Example Playbook
----------------

  - hosts: localhost
    roles:
      - role: aws_create_database
        vars: 
          vpc_id: "{{ tv_network.vpc.id }}"
          allowed_subnets:
            - '10.10.1.0/24'

License
-------

BSD

Author Information
------------------


