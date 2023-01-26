aws_create_wireguard_server
=========

Create a wireguard server with multiple instances and load balancer

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
* key_name: 
    key name for login to instance
* instance_type: 
    Type of EC2 instance
* ami_name: 
    Name of AMI instance
* image_id: 
    Instance system image id
