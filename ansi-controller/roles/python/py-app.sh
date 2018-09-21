#!/bin/sh

###   VARIABLES   ###
src=/webapps/devops/devops-challenge
app=flask-application
vm=virtualenv
env=flask-env
pip="pip install Flask"
exec="python app.py"

cd $src && mkdir $app && sudo chown -R vagrant:vagrant $src/$app	### CREATE DIRECTOR AND CHANGE OWNER 
cd $src/$app && $vm $env						### SETUP FLASK ENVIRONMENT
cd $src/$app && source $env/bin/activate				### ACTIVATE ENVIRONMENT
cp $src/app.py $src/$app && sudo chown -R vagrant:vagrant $src/		### COPY SCRIPT AND CHANGE OWNER  
cd $src/$app && $exec							### EXECUTE SCRIPT 
