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

[Check this out for initial configuration](https://www.wolfe.id.au/2020/03/10/starting-a-go-project/)

[golang project layout](https://github.com/golang-standards/project-layout)

[Structure my Go Project](https://www.wolfe.id.au/2020/03/10/how-do-i-structure-my-go-project/)

[Implement this code - medium article](https://medium.com/easyread/unit-test-sql-in-golang-5af19075e68e)

[Unit testing](https://betterprogramming.pub/how-to-unit-test-a-gorm-application-with-sqlmock-97ee73e36526)

[Gorilla Mux](https://github.com/gorilla/mux)

[Versioning API](https://dev.to/geosoft1/versioning-your-api-in-go-1g4h)

