# golang-rest-api-crud

<h2>Initialise the project</h2>

>Example

`go mod init github.com/USERNAME/golang-rest-api-crud`

<h2>Entry point</h2>
Pattern of storing the entry point in a **cmd** folder as we 
can easily customise the name of the binary as 'go' uses the 
parent folder name executables.

`mkdir -p cmd/rest-api-crud` <br>
`touch cmd/rest-api-crud/main.go`

<h2>Project Structure</h2>

```
golang-rest-api-crud
│
└───cmd/
│   └───rest-api-crud/
│       │   main.go
│   
└───repository/
│   │   repository.go
│   └───mysql/
│   │   │   mysql.go
│   │   │   mysql_test.go
│   └───postgres/
│       │   postgres.go
│       │   postgres_test.go
│
│   README.md
│   go.mod
```


Now run this with the following command.<br>
`go run cmd/simple-service/main.go`

<br>

<h2>Postgres DB</h2><br>
[Docker Postgres](https://dev.to/andre347/how-to-easily-create-a-postgres-database-in-docker-4moj)

`docker run --name postgres-db -e POSTGRES_PASSWORD=docker -p 5432:5432 -d postgres`
<br>
+ Last section of the command grabs the latest 'postgres' Docker image from the Docker Hub
+ **-d** means that you enable Docker to run the container in the background
+ **-p** plus the port numbers means you map the containers port **5432** to the external port **5432** this allows you to connect to it from the outside
+ **POSTGRES_PASSWORD** sets the password to docker. This is the password that gives you access to your database
+ the **—name** property gives your container a name and means you can easily find it back

<br>
You need to use the following connection details to actually connect to the DB:

+ Host: localhost
+ Port: 5432
+ User: postgres
+ Password: docker

<br><br>

[Check this out for initial configuration](https://www.wolfe.id.au/2020/03/10/starting-a-go-project/)

[golang project layout](https://github.com/golang-standards/project-layout)

[Structure my Go Project](https://www.wolfe.id.au/2020/03/10/how-do-i-structure-my-go-project/)

[Implement this code - medium article](https://medium.com/easyread/unit-test-sql-in-golang-5af19075e68e)

[Unit testing](https://betterprogramming.pub/how-to-unit-test-a-gorm-application-with-sqlmock-97ee73e36526)

[Gorilla Mux](https://github.com/gorilla/mux)

[Versioning API](https://dev.to/geosoft1/versioning-your-api-in-go-1g4h)

