#!/bin/bash

#Script to enable firewall

#Enable firewall
/usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on

#Allow signed apps
/usr/libexec/ApplicationFirewall/socketfilterfw --setallowsigned on
