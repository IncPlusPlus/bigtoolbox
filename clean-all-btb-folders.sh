#!/usr/bin/env bash

# The purpose of this script is to clean all bigtoolbox folders of their /target folder.
# This script assumes you have your directory structure as follows

#btb/
#├── bigtoolbox/
#│   ├── clean-all-btb-folders.sh
#│   ├── pom.xml
#│   └── ...
#├── bigtoolbox-parent/
#│   ├── pom.xml
#│   └── ...
#├── bigtoolbox-io/
#│   ├── pom.xml
#│   └── ...
#├── bigtoolbox-math/
#│   ├── pom.xml
#│   └── ...
#├── bigtoolbox-network/
#│   ├── pom.xml
#│   └── ...
#└── bigtoolbox-os/
#    ├── pom.xml
#    └── ...

mvn clean

cd ./../bigtoolbox-io/
mvn clean

cd ./../bigtoolbox-math/
mvn clean

cd ./../bigtoolbox-network/
mvn clean

cd ./../bigtoolbox-os/
mvn clean

cd ./../bigtoolbox-parent/
mvn clean