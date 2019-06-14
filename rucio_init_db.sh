#!/bin/bash
./wait-for-it.sh -h postgres -p 5432 -t 90
./wait-for-it.sh -h rucio-dev -p 443 -t 90
python -c "import util as rdb; rdb.build_database(); rdb.create_root_account();"
