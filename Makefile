all: mrvaserver

mrvaserver: 
	# GOOS=linux GOARCH=arm64 go build
	go build

clean:
	rm mrvaserver

