#!/bin/bash
export HOME=/config

# "fix" homedir for app user as Eclipse ignores $HOME (Java user.home != $HOME)
#sed -i "/^${APP_USER}:/ { s#/dev/null#${HOME}# }" /etc/passwd

exec /opt/eclipse/eclipse -vmargs "-Duser.home=$HOME"
