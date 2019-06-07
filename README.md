# dockerfiles

Dockerfiles that I created for a general purpose

## MySQL 5.7 case sensitive false

On linux by default the MySQL is case senstive. Then when we execute commands as to `SELECT * FROM table_name` and the tables created with capital letters (`TABLE_NAME`), the command not working or vice versa.

For this it is necessary add the lower_case_table_names config. This dockerfile create an image based on mysql image already with this config with value 1.

`lower_case_table_names = 1`

### Infos
* Image: flaviochess/mysql-case_sensitive_false:5.7
* Docker hub: https://hub.docker.com/r/flaviochess/mysql-case_sensitive_false

### Tips
For run a container and create a database and set root user password:
```
docker run -p 3306:3306 -e MYSQL_DATABASE=my_database -e MYSQL_ROOT_PASSWORD=root -d flaviochess/mysql-case_sensitive_false:5.7
```
