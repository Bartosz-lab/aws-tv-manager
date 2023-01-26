aws_create_bastion
=========

Create aws bastion Instance

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
* ansible_key_name: 
    name of key used with ansible managed instances
* bastion_key_name: 
    name of key used with bastion
* instance_type: 
    Type of EC2 instance
* image_id: 
    Instance system image id

Return:
-------
* sg_management_id: 
    Security group id, which shoud be added to all EC2 Instances