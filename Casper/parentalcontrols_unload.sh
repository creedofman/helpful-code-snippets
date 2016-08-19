#!/bin/bash

#Find user
user=`last -1 | awk '{print $1}'`

#Turn off Parental Controls for $user
sudo -u $user launchctl unload -w /System/Library/LaunchDaemons/com.apple.familycontrols.plist
