# README For Sparta Global Final Project Eng53
This repository holds the berks file and .json files for packer. It uses these repositories:

https://github.com/jemurphyuk/eng53-devops-final-app-cookbook


https://github.com/jemurphyuk/eng53-devops-final-db-cookbook

The following environment variables ``CHEF_LICENSE=accept`` is injected, to esnure chef-solo is able to run on an instance to build an AMI.
The job is run on Jenkins, after the repositories have been tested and are sucsseful, the packer creates two images based on the json files here and the berks files. The following commands are run in the Jenkins job:
````
berks vendor cookbooks
packer validate <file_name>.json
packer build <file_name>.json
````

The images are later used in terraform
