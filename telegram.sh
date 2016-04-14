#!/bin/sh

export HOME=$SNAP_USER_DATA 
export XDG_CONFIG_HOME=$SNAP_USER_DATA

exec Telegram
