# Use the official Golang image
FROM golang:1.23

# Set the Current Working Directory inside the container
WORKDIR /app

# Copy go mod and sum files
COPY go.mod go.sum ./

# Download all dependencies
RUN go mod download

# Copy the source code into the container
COPY . .

# Build the Go app
RUN go build -o main .

# Expose port 80 to the outside world
EXPOSE 80

# Command to run the executable
CMD ["./main"]