#!/bin/bash
wget https://raw.githubusercontent.com/dewsoftpvtltd/emailserver/master/three.sh
wget https://raw.githubusercontent.com/dewsoftpvtltd/emailserver/master/one.sh
wget https://raw.githubusercontent.com/dewsoftpvtltd/emailserver/master/two.sh

chmod +x three.sh
chmod +x one.sh
chmod +x two.sh

./one.sh
