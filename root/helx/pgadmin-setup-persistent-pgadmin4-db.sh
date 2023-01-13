#!/command/with-contenv sh
# Setting shell above will use container env variables.

# HOME will be /root, need to change for final container user (standard *nix HOME).
HOME=/home/$username

if [ ! -f $HOME/.pgadmin/pgadmin4.db ]
then
  mkdir -p $HOME/.pgadmin && \
  cp /helx/pgadmin4.db $HOME/.pgadmin/  && \
  mkdir -p /config/.pgadmin && \
  ln -s $HOME/.pgadmin/pgadmin4.db /config/.pgadmin/pgadmin4.db && \
  chown -R $username:user $HOME/.pgadmin && \
  chmod 700 $username:user $HOME/.pgadmin && \
  chmod 600 $username:user $HOME/.pgadmin/pgadmin4.db
fi
