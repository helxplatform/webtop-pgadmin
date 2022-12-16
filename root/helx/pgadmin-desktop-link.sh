#!/bin/bash

set -eoux pipefail

# Add pgAdmin link to the Desktop.
if [ ! -f $HOME/Desktop/pgadmin4.desktop ]
then
  mkdir -p $HOME/Desktop && ln -s /usr/share/applications/pgadmin4.desktop $HOME/Desktop/pgadmin4.desktop
fi
