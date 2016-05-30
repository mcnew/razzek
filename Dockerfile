FROM jboss/wildfly:9.0.2.Final

RUN mkdir -p $JBOSS_HOME/modules/com/mysql/main/
ADD module.xml $JBOSS_HOME/modules/com/mysql/main/
RUN curl -SLsf https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.39.tar.gz | tar --wildcards -Ozxf - '*/mysql-*.jar' > $JBOSS_HOME/modules/com/mysql/main/mysql-driver.jar && \
  echo "7745f482af1f3418b210c158955a1afb  $JBOSS_HOME/modules/com/mysql/main/mysql-driver.jar" | md5sum -c
