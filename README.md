# Fermilab Rucio Development Environment
* Brandon White
* Scientific Data Managment
* bjwhite@fnal.gov

1. Make hard links to the utility files in the top rucio code directory. 
2. Build rucio-client and rucio-dev containers with the included scripts/Dockerfiles. 
3. Run the application with docker-compose.
4. Initialize the database with the rucio_init_db and rucio_create_rsesscripts in /opt/rucio in a running rucio-client container.

Yes, I know there are security secrets in this repo. (CERN did it first)
DON'T use this for important stuff.
