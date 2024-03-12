#!/bin/bash


domain=cloud.solrstation.com #Set this to the domain pointing to the collabora/code server
server_name=office.solrstation.com #Set this to the domain pointed to your nextcloud app

sudo docker pull collabora/code
sudo docker run --name collabora -t -d -p 9980:9980 -e “domain=$domain” -e “server_name=$server_name” --restart no --cap-add MKNOD collabora/code
