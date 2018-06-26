#DBA Intro To MySQL Training.

Today ='2017-3-13'<br>
DBA='Alex Kalaj'

Here is a small homework assignment to familiarize yourself with MySQL and it's basic operations.

_What is MySQL?_<br>
MySQL is the database software that powers most of Smartsheet.

MySQL (officially pronounced as "My S-Q-L") is an open-source relational database management system (RDBMS). Its name is a combination of "My", the name of co-founder Michael Widenius' daughter, and "SQL", the abbreviation for Structured Query Language. It is written in the "C" programming language and maintained and package for Smartsheet by a company called "Percona."

_Who is Percona?_<br>
Percona is a MySQL consulting firm that writes their our "fork" of MySQL for high performance and enterprise level MySQL operations. They are currently contracted by Smartsheet for persisely this reason.


#Process of setup

This next process will quickly walk you through the process of setting up MySQL on a Unix-based system. 

<b>1.) Access the server or computer that you will be using via "SSH commandline.""</b>

<b>2.) Search the list of available software on the system by using "YUM" or "APT."</b> The MySQL package we use is written by Percona so we'll search for that. Please install MySQL 5.7.

```
#For Debian based distributions

user@hostname:~$ sudo apt search Percona

#For RedHat distributions of Linux

user@hostname:~$ sudo yum search Percona
```
If the distribution is not found, visit the following link to learn how to add the Percona repositories to your system.<br><br>
If your system uses YUM<br>
<a href="https://www.percona.com/doc/percona-server/5.7/installation/yum_repo.html">Percona YUM Repos</a>

If your system uses APT<br>
<a href="https://www.percona.com/doc/percona-server/5.7/installation/apt_repo.html">Percona APT Repos</a>

<b>3.) Install MySQL on the host using the following commands.</b>

```
#MySQL install comand for YUM
user@hostname:~$ sudo yum install percona-server-server-5.7

#MySQL install comand for APT
user@hostname:~$ sudo apt install percona-server-server-5.7
```

<b>4.) Once MySQL is manually installed, ensure it is started and attempt to log in by pressing MySQL</b>

```
#check that the service is running on Linux

user@hostname:~$ sudo service mysql status
Active: active (running) since Sat 2017-03-11 16:10:48 PST; 1 day 14h ago

#Attempt to log in
user@hostname:~$ 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 119
Server version: 5.7.14-79.1 Percona Server (GPL), Release 79.1, Revision 1c589f9
```

If you find you're not able to log in, please pull up this guide and get in touch with a DBA.
<br>
<a href="https://dev.mysql.com/doc/refman/5.7/en/resetting-permissions.html">Resetting MySQL permissions.</a>
