all: mrvaserver

msla:
	GOOS=linux GOARCH=arm64 go build

mrvaserver: 
	# GOOS=linux GOARCH=arm64 go build
	go build

clean:
	rm mrvaserver

