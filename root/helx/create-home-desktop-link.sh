#!/command/with-contenv sh
# Setting shell above will use container env variables.

if [ ! -L /config/Desktop/$username ]
then
  mkdir -p /config/Desktop
  ln -s /home/$username /config/Desktop/$username
fi
