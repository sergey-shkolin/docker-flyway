FROM sergeyshkolin/java8

ENV VERSION 3.2.1
ENV TERM linux
RUN opkg-install bash
RUN curl -OL /flyway.zip http://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/$VERSION/flyway-commandline-$VERSION.zip && \
    unzip flyway.zip -d / && \
    ln -s /flyway-$VERSION /flyway

ADD mariadb-java-client-1.1.8.jar /flyway/jars/mysql.jar

ENTRYPOINT ["/flyway/flyway"]