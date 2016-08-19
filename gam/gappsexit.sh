#!/bin/bash

#Script assumes you have GAM installed at ""~/gam/gam.py" as suggested at
#https://github.com/jay0lee/GAM/wiki

#Tips: - Find and replace "value" with what is needed to customize script
#      - Don't forget to "chmod 755 gappsexit.sh" prior to running.

gappsuser="value"
password="value"

#Run info command so that you can compare user info before/after script runs
python ~/gam/gam.py info user $gappsuser

# - Suspends Google account of $gappsuser
# - Resets $gappsuser password to $password. Per Google Apps support articles,
#   password reset via GApps API will reset sign-in cookies and require a user
#   to login again.

python ~/gam/gam.py update user $gappsuser password $password suspended on

#Change group names to whatever groups $gappsuser is in

python ~/gam/gam.py update group "value" remove user $gappsuser
python ~/gam/gam.py update group "value" remove user $gappsuser
python ~/gam/gam.py update group "value" remove user $gappsuser

#This just runs the info command to show you that $gappsuser has been removed
#from listed groups - I always run this command after anyway, why not script it!

python ~/gam/gam.py info user $gappsuser
