#!/bin/bash

NOW=$(date "+Update_%m-%d-%Y")
du -sh /WEB/mirror/2TB-2/* >> /root/Mirror-Size/$NOW
du -sh /WEB/mirror/4TB-1/* >> /root/Mirror-Size/$NOW
du -sh /WEB/mirror/4TB-2/* >> /root/Mirror-Size/$NOW
du -sh /WEB/mirror/6TB-1/* >> /root/Mirror-Size/$NOW
cd /root/Mirror-Size
git add /root/Mirror-Size/$NOW
git commit -m "Log Update"
git push origin master
