FLAGS := -mod=vendor

install:
	GOFLAGS=$(FLAGS) go install -v

build:
	GOFLAGS=$(FLAGS) go build -v

build_pi:
	GOFLAGS=$(FLAGS) GOOS=linux GOARCH=arm GOARM=6 go build -v

test:
	GOFLAGS=$(FLAGS) go test --race -v ./...

.PHONY: install build build_pi test