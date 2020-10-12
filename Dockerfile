FROM ibmcom/db2:11.5.4.0
RUN mkdir /var/custom
RUN mkdir /var/custom/sql
RUN mkdir /var/custom/data
COPY ./sql/*.sql /var/custom/sql/
COPY ./data/*.csv /var/custom/data/
COPY createschema.sh /var/custom/
RUN chmod 444 /var/custom/sql/*.sql
RUN chmod 444 /var/custom/data/*.csv
RUN chmod a+x /var/custom/createschema.sh