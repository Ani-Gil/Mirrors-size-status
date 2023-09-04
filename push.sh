#!/bin/bash

NOW=$(date "+Update_%m-%d-%Y")
du -sh /siwoo.org/Array01/* >> /siwoo.org-system/Mirrors-size-status/$NOW
cd /siwoo.org-system/Mirrors-size-status
git add *
git commit -m "Log Update"
git push origin master
