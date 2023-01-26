aws_startup
=========

Create Network, route tables, internet and nat gateways, etc.


Role Variables
--------------

* region: 
    aws region
* network: 
    main network cidr adress
* nat_subnet: 
    nat subnet cidr adress
* nat_az:
    availability zone for nat subnet

Return Variable
---------------

* vpc_id:
    id of VPC
* igw_id:
    id of internet gateway
* subnet_nat_id:
    id of nat subnet
* nat_gw_id:
    id of nat gateway
* rt_igw_id:
    id of routing table with internet gateway
* rt_nat_id:
    id of routing table with nat gateway
