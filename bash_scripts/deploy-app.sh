$!/bin/bash

#Demonistration of simple git pull + restart
cd /opt/example_app || exit
git pull origin main
systemctl restart exmaple_app.service
echo "Deployed and restarted."