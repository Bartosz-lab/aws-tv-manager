aws_create_database
=========

Create aws Postgres Aurora Database with redundation.

Requirements
------------

* VPC Network ID
* Allowe Subnets List


Role Variables
--------------

* region: 
    aws region
* az: 
    list of availability zones with subnets to prepare
  Example:
    az:
      - { name: 'a', cidr: '10.10.127.0/28' }

* vpc_id: 
    **Required** ID VPC network
* instance_type: 
    Type of RDS instance
* db_port:
    Database port
* db_username:
    Database username
* db_password:
    Database password
* allowed_subnets:  
    List of allowed subnets in cidr format

Return Variable
---------------
  db:
    username:
      Database username
    password:
      Database password
    port:
      Database port
    reader_endpoint:
      Database reader endpoint
    endpoint:
      Database writer endpoint



