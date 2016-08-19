#!/bin/bash
# this is not following best practices
# removing explicit familyControlsEnabled keys to mitigate high parentalcontrolsd cpu usage
rm -rf /Library/Managed\ Preferences/com.apple.applicationaccess.new.plist
rm -rf /Library/Managed\ Preferences/*/com.apple.applicationaccess.new.plist
if pgrep 'parentalcontrolsd'; then
    killall parentalcontrolsd
fi