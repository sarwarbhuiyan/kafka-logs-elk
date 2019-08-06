#/bin/ash

confdir="${PWD}/config"
chown 1000 -R "$confdir"
find "$confdir" -type f -name "*.yml" -exec chmod go-wrx {} \;

# setup beats and apm server
docker-compose -f docker-compose.yml -f docker-compose.setup.yml up setup_filebeat 

printf "Setup completed successfully. To start the stack please run:\n\t docker-compose up -d\n"
printf "\nIf you wish to remove the setup containers please run:\n\tdocker-compose -f docker-compose.yml -f docker-compose.setup.yml down --remove-orphans\n"
printf "\nYou will have to re-start the stack after removing setup containers.\n"
