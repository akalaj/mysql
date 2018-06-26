#DBA Intro To MySQL Querying.

Today ='2017-3-13'<br>
DBA='Alex Kalaj'

Here is a small homework assignment to familiarize yourself with MySQL and it's basic query operations.

_What is the MySQL CLI?_<br>

The MySQL CLI is the "<b>C</b>ommand<b>L</b>ine <b>I</b>nterface" for MySQL. This is where we can log into MySQL and interact directly with the software.

_What is Querying?_<br>

Querying is the process of executing SQL against MySQL to retrieve stored data. This guide will help you to understand MySQL query basic


#Process of setup

First, download the "<b>imdb.sql</b>" file to begin the construction of the "imdb" database. You can do this by gitcloning the "dbaOperations," repo from our GitHub.

<b>1.) Git Clone the dbaOperations repo.</b>

```
user@hostname:~$ git clone https://github.com/akalaj/mysql.git
```



<b>2.) Switch into the dbaOperations repo and login to MySQL.</b>

```
user@hostname:~$ cd dbaOperations/training; mysql

Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 119
Server version: 5.7.14-79.1 Percona Server (GPL), Release 79.1, Revision 1c589f9
```

<b>3.) Build the "imdb" database, "USE" it, then build it.</b>


```
#Create the imdb database

mysql> CREATE DATABASE `imdb`;

#USE the newly created database

mysql> USE `imdb`;

#Build `imdb` database using "imdb.sql"

mysql> SOURCE imdb.sql;

```

#MySQL Query Exercises

The following steps will train you on how to use the MySQL commandline. For the sake of helping you identify the scope of where you can go with MySQL, we'll quickly go from basics to advanced queries and allow you to fill in the gaps of knowledge on your own.


<b>1.) Identify what user you are in MySQL.</b>

Most queries you'll execute in MySQL will start with a <b>SELECT</b> command. This "SELECT" statement basically says "Give me."

```
#The "USER()" function tells us which user we are in MySQL.

mysql> SELECT USER();
+------------------+
| USER()           |
+------------------+
| root@localhost   |
+------------------+
1 row in set (0.00 sec)

```

<b>2.) Identify what database you're using.</b>


```
#Ther "DATABASE()" function tells us which database is in use during our MySQL session.

mysql> SELECT DATABASE();
+------------+
| DATABASE() |
+------------+
| imdb       |
+------------+
1 row in set (0.00 sec)

```

<b>3.) Identify what tables are in your database.</b>


```
#"SHOW TABLES" tells us what tables are in the database we're currently in.

mysql> show tables;
+------------------+
| Tables_in_imdb   |
+------------------+
| actors           |
| directors        |
| directors_genres |
| movies           |
| movies_directors |
| movies_genres    |
| roles            |
+------------------+
7 rows in set (0.00 sec)

```

<b>3.) Identify the first record in a database.</b>

A database will have many records. The following query is a basic select statement. THis statement has been modified with a "LIMIT" statement to only show the first record of the table. In the below statement "<b>*</b>" is being used to represent "All columns in the table." The columns are the "id" and "first_name" sections in the table below.

```
mysql> SELECT * FROM actors LIMIT 1;
+--------+-------------------+-----------------+--------+
| id     | first_name        | last_name       | gender |
+--------+-------------------+-----------------+--------+
|    291 | A.                | Abakirov        | M      |
+--------+-------------------+-----------------+--------+

```

If we wanted just specific columns, we could specify which ones.

```
mysql> SELECT first_name, last_name FROM actors LIMIT 1;
+-------------------+-----------------+
| first_name        | last_name       |
+-------------------+-----------------+
| A.                | Abakirov        |
+-------------------+-----------------+

```
