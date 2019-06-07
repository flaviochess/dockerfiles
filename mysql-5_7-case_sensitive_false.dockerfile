FROM mysql:5.7

RUN echo '\n[mysqld]\nlower_case_table_names = 1' >> /etc/mysql/my.cnf
