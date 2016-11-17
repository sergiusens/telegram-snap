#!/bin/sh

export HOME=$SNAP_USER_DATA 
export XDG_DATA_HOME=$SNAP_USER_DATA
export XDG_DATA_DIRS=$SNAP_USER_DATA
export XDG_CACHE_HOME=$SNAP_USER_DATA/.cache
export XDG_CONFIG_HOME=$SNAP_USER_DATA
export XDG_RUNTIME_DIR=$SNAP_USER_DATA
export QT_XKB_CONFIG_ROOT=/usr/share/X11/xkb
export QT_IM_MODULE=xim

# Allows to make trayicon to be readable by the shell
mkdir -p $XDG_CACHE_HOME
export TMPDIR=$XDG_CACHE_HOME

cd $SNAP_USER_DATA
exec Telegram "$@"
