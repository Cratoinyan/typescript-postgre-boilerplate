CREATE TABLE "user"(
"id" numeric(16),
"name" varchar(20),
"lastname" varchar(20),
"password" varchar(20),
"username" varchar(20),
"email" varchar(100),
"language" char(2)	
);

CREATE TABLE "wallet"(
"wallet-id" numeric(16),
"deposit" numeric,
"user-id" numeric	
);

INSERT INTO "user" 
VALUES (1234567891234567,'umut','ciloglu','umut123','cratoinyan','ciloglu2001@gmail.com','EN'),
(7864123795412358,'gokalp','ates','ates123','destroyer_X','goklapatees@gmail.com','TR');

INSERT INTO "wallet"
VALUES (7598413247896543,10,1234567891234567),
(3012547954316914,230,7864123795412358);

