#!/bin/bash

NOW=$(date "+Update_%m-%d-%Y")
du -sh /WEB/mirror/4TB-1/* >> /root/Mirror-Size-Status/$NOW
du -sh /WEB/mirror/6TB-1/* >> /root/Mirror-Size-Status/$NOW
du -sh /WEB/mirror/6TB-2/* >> /root/Mirror-Size-Status/$NOW
cd /root/Mirror-Size-Status
git add /root/Mirror-Size-Status/$NOW
git commit -m "Log Update"
git push origin master
