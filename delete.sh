#!/bin/bash
cd /siwoo.org-system/Mirrors-size-status
git rm Update*
git add ./*
git commit -m "Delete"
git push origin master
