-include .env

.SILENT:

DB_URL=mysql://$(MYSQL_USER):$(MYSQL_PASSWORD)@tcp($(MYSQL_HOST):$(MYSQL_PORT))/$(MYSQL_DATABASE)

tidy:
	@go mod tidy
	@go mod vendor

run:
	@go run cmd/main.go

build-windows:
	@GOOS=windows GOARCH=amd64 go build -o bin/main.exe cmd/main.go

build-linux:
	@GOOS=linux GOARCH=amd64 go build -o bin/main cmd/main.go

migration:
	@migrate create -ext sql -dir ./migrations -seq $(name)

migrateup:
	@migrate -path ./migrations -database "$(DB_URL)" -verbose up

migratedown:
	@migrate -path ./migrations -database "$(DB_URL)" -verbose down