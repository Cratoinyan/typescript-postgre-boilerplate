  1. Install Docker on your computer if you want run this program on docker (recommended)

  2. This program need a postgre database for testing.If you don't want to waste time creating one,
           You can use /pre/testdbSQL.sql and create one.

  3. This program need an .env file on your main directory that contains data that should not be shared 
           .env should contain 4 fields, 3 preferably:
	   ```ENV
	   PORT=5000
	   DB_PORT=5432
	   DB_CONNECTION_STRING='postgres://<db-username>:<db-password>@<host>/<db-name>'
	   DB_CONNECTION_STRING_DOCKER='postgres://<db-username>:<db-password>@host.docker.internal:<db-port>/<db-name>'
	   ```

## How to use ? 

### with docker (recommended)
  1. ```npm install```
  2. ```docker-compose up```

### without docker
  1. ```npm install```
  2. ```npm run dev```

After the server is up you can send some test requests like:

-> localhost:5000/users 

Expected response:
```JSON

[
    {
        "id": "1234567891234567",
        "name": "umut",
        "lastname": "ciloglu",
        "password": "umut123",
        "username": "cratoinyan",
        "email": "ciloglu2001@gmail.com",
        "language": "EN"
    },
    {
        "id": "7864123795412358",
        "name": "gokalp",
        "lastname": "ates",
        "password": "ates123",
        "username": "destroyer_X",
        "email": "goklapatees@gmail.com",
        "language": "TR"
    }
]
```

-> localhost:5000/usersDeposit

Expected response:
```JSON
[
    {
        "id": "1234567891234567",
        "name": "umut",
        "lastname": "ciloglu",
        "password": "umut123",
        "username": "cratoinyan",
        "email": "ciloglu2001@gmail.com",
        "language": "EN",
        "wallet-id": "7598413247896543",
        "deposit": "10",
        "user-id": "1234567891234567"
    },
    {
        "id": "7864123795412358",
        "name": "gokalp",
        "lastname": "ates",
        "password": "ates123",
        "username": "destroyer_X",
        "email": "goklapatees@gmail.com",
        "language": "TR",
        "wallet-id": "3012547954316914",
        "deposit": "230",
        "user-id": "7864123795412358"
    }
]
```
-> localhost:5000/test

Expected response:
```JSON
Success
```