FROM postgres:14.3
#FROM postgrest/postgrest:v11.0.0
ENV POSTGRES_PASSWORD=Stt-6789
EXPOSE 5432
RUN echo create table test \(id int\) ';' >> /docker-entrypoint-initdb.d/1.sql
RUN echo insert into test values \(555\) ';' >> /docker-entrypoint-initdb.d/1.sql
#CMD psql -U postgres -c "create table test (id int); insert into test values (333);"

