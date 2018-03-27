FROM payara/server-full:181

RUN wget http://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.46.tar.gz && tar -xvzf mysql-connector-java-5.1.46.tar.gz && mv mysql-connector-java-5.1.46/mysql-connector-java-5.1.46.jar ~/glassfish/domains/domain1/lib/ && rm -rf mysql-connector-java-5.1.46 && rm -r mysql-connector-java-5.1.46.tar.gz

RUN rm /opt/payara41/glassfish/domains/domain1/config/domain.xml
COPY ./domain.xml /opt/payara41/glassfish/domains/domain1/config
COPY ./target/*.war /opt/payara41/deployments
