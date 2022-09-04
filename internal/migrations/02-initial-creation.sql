create TABLE IF NOT EXISTS registration(id int not null  AUTO_INCREMENT,firstname varchar(100) not null,lastname varchar(100) not null,username varchar(30) not null,passwordhash varchar(100) not null,role varchar(30) not null,mailid varchar(30)  not null,phonenumber int not null , bloodgroup varchar(5), PRIMARY KEY(id),UNIQUE(username));

create TABLE IF NOT EXISTS passwordsalts(id int(5) not null  AUTO_INCREMENT,salt varchar(100) not null , PRIMARY KEY(id));

create TABLE IF NOT EXISTS student(id int(5) not null  AUTO_INCREMENT,RegdNumber varchar(30) not null,classid varchar(20) not null , PRIMARY KEY(id));

create TABLE IF NOT EXISTS teacher(id int(5) not null AUTO_INCREMENT, empid varchar(30) not null,designation varchar(30) not null , PRIMARY KEY(id));

create TABLE IF NOT EXISTS parent(id int(5) not null AUTO_INCREMENT , parentid varchar(30) not null, relation varchar(30) not null , PRIMARY KEY(id));

create TABLE IF NOT EXISTS class(classid int not null AUTO_INCREMENT , classname varchar(30) not null, PRIMARY KEY(classid));

create TABLE IF NOT EXISTS login(username varchar(30) not null,passwordhash varchar(100)  , PRIMARY KEY(username));