#!/bin/bash
cd /root/Mirror-Size-Status
git rm Update*
git add ./*
git commit -m "Delete"
git push origin master
