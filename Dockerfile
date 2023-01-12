FROM containers.renci.org/helxplatform/webtop/base:202212152339

# Setup pgAdmin package repository, install pgAdmin
RUN curl -fsS https://www.pgadmin.org/static/packages_pgadmin_org.pub | \
        gpg --dearmor -o /usr/share/keyrings/packages-pgadmin-org.gpg && \
    curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | apt-key add && \
    echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && \
    apt update && apt-get -y install pgadmin4 pgadmin4-desktop
COPY /root /
