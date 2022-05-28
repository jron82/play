all: check-gofmt build

build:
	go build -o bin/play ./... && chmod a+x bin/play

check-gofmt:
	scripts/check_gofmt.sh

run: build
	./bin/play