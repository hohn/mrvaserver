.PHONY: all clean msla

all: msla

msla:
	GOOS=linux GOARCH=arm64 go build

mrvaserver: 
	go build

clean:
	rm mrvaserver

