# README For Sparta Global Final Project Eng53
## Cookbooks
### MongoDB
The cookbook for mongodb provisions an instance to make a data base server. The kitchen.cloud does this via aws whilst kitchen is for local
Run the command for aws

````
KITCHEN_YAML=kitchen.cloud.yml kitchen create
kitchen converge
kitchen setup
kitchen verify
````
### Unit/Integration testing using chefspec and inspec

To start the unit test, run the command

````
chef exec rspec spec
````
To start the integration test, run the command

````
kitchen test
````
Jenkins will take the branchs and test it with the above commands 
After the tests are succsesssful a job starts on jenkins to make a new image of the mongodb and app cookbooks using packer.
This image can then be used in terreform to create the instances in the desired configeration
