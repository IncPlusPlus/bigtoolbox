# The purpose of this script is to clean all bigtoolbox folders of their /target folder.
# This script assumes you have your directory structure as follows

#btb/
#├── bigtoolbox/
#│   ├── clean-all-btb-folders.ps1
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

Set-Location $PSScriptRoot
Start-Process mvn clean -NoNewWindow -Wait

Set-Location ./../bigtoolbox-parent
Start-Process mvn clean -NoNewWindow -Wait

Set-Location ./../bigtoolbox-io
Start-Process mvn clean -NoNewWindow -Wait

Set-Location ./../bigtoolbox-math
Start-Process mvn clean -NoNewWindow -Wait

Set-Location ./../bigtoolbox-network
Start-Process mvn clean -NoNewWindow -Wait

Set-Location ./../bigtoolbox-os
Start-Process mvn clean -NoNewWindow -Wait