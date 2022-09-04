create TABLE IF NOT EXISTS registration(id int not null  AUTO_INCREMENT,firstname varchar(100) not null,lastname varchar(100) not null,username varchar(30) not null,passwordhash varchar(100) not null,role varchar(30) not null,mailid varchar(30)  not null,phonenumber int not null , bloodgroup varchar(5), PRIMARY KEY(id),UNIQUE(username));

create TABLE IF NOT EXISTS passwordsalts(saltid int not null  AUTO_INCREMENT,id int not null,salt varchar(100) not null , PRIMARY KEY(saltid),FOREIGN KEY (id) REFERENCES registration(id));

create TABLE IF NOT EXISTS student(studentid int not null  AUTO_INCREMENT,studentregistrationid int,classid varchar(20) not null , PRIMARY KEY(studentid),FOREIGN KEY (studentregistrationid) REFERENCES registration(id));

create TABLE IF NOT EXISTS teacher(teacherid int not null AUTO_INCREMENT, teacherregistrationid int not null,designation varchar(30) not null , PRIMARY KEY(teacherid),FOREIGN KEY (teacherregistrationid) REFERENCES registration(id));

create TABLE IF NOT EXISTS parent(parentid int not null AUTO_INCREMENT , parentregistrationid int not null, relation varchar(30) not null , PRIMARY KEY(parentid),FOREIGN KEY (parentregistrationid) REFERENCES registration(id));

create TABLE IF NOT EXISTS class(classid int not null AUTO_INCREMENT , classname varchar(30) not null, PRIMARY KEY(classid));

create TABLE IF NOT EXISTS login(username varchar(30) not null,passwordhash varchar(100)  , PRIMARY KEY(username));