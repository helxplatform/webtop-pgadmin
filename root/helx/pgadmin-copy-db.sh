#!/bin/bash

set -eoux pipefail

# Copy pgadmin configuration db to config directory.

if [ ! -f $HOME/.pgadmin/pgadmin4.db ]
then
    mkdir -p $HOME/.pgadmin && \
	cp /helx/pgadmin4.db $HOME/.pgadmin && \
	chown -R $USER:$USER $HOME/.pgadmin && \
	chmod 700 $HOME/.pgadmin && \
        chmod 600 $HOME/.pgadmin/pgadmin4.db
fi
