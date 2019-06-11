#!/bin/bash

#./wait-for-it.sh -h mysql -p 3306 -t 90
./wait-for-it.sh -h postgres -p 5432 -t 90
./wait-for-it.sh -h rucio-dev -p 443 -t 90

# Configure Rucio's to have an RSE (FNAL or CERN) for each of the XRootD containers
echo "Adding RSEs to Rucio."
rucio-admin -a $RUCIO_ACCOUNT rse add FNAL
rucio-admin -a $RUCIO_ACCOUNT rse add CERN
echo "Adding protocols to Rucio."
rucio-admin -a $RUCIO_ACCOUNT rse add-protocol --hostname localhost --scheme root --port 1094 --prefix /tmp FNAL 
rucio-admin -a $RUCIO_ACCOUNT rse add-protocol --hostname localhost --scheme root --port 1094 --prefix /tmp CERN
