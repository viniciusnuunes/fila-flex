FROM golang:1.23-alpine

# Set the Current Working Directory inside the container
WORKDIR /app

# Cop files
COPY . .

# Download all dependencies. Dependencies will be cached if the go.mod and go.sum files are not changed
RUN go get -d -v ./...

# Build the Go app
RUN go build -o api ./cmd/api/main.go

# EXPOSE the port
EXPOSE 8080

# Run the executable
CMD ["./api"]