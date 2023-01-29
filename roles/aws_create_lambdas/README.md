aws_create_lambdas
=========

A brief description of the role goes here.

Requirements
------------

* VPC Network ID

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