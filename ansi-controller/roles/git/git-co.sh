#!/bin/sh

### Create below folder structure ###
mkdir -p /webapps/devops

### Clone repo to below $loc ###
loc=/webapps/devops
url="https://bitbucket.org/azneita/devops-challenge.git"

cd $loc && git clone $url

