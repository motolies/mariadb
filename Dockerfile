ARG MARIADB_VERSION=latest
FROM mariadb:${MARIADB_VERSION}

RUN echo "mariadb image tag is ${MARIADB_VERSION}"

ADD ./my.cnf /etc/mysql/my.cnf
ENV MARIADB_VERSION ${MARIADB_VERSION}


