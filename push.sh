#!/bin/bash

NOW=$(date "+Update_%m-%d-%Y")
du -sh /siwoo.org/6TB-HDD01/* >> /siwoo.org-system/Mirrors-size-status/$NOW
du -sh /siwoo.org/6TB-HDD02/* >> /siwoo.org-system/Mirrors-size-status/$NOW
du -sh /siwoo.org/10TB-HDD01/* >> /siwoo.org-system/Mirrors-size-status/$NOW
du -sh /siwoo.org/10TB-HDD02/* >> /siwoo.org-system/Mirrors-size-status/$NOW
cd /siwoo.org-system/Mirrors-size-status
git add Update*
git commit -m "Log Update"
git push origin master
