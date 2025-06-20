FROM golang:1.23.2
WORKDIR /sprint11_task
COPY go.mod go.sum ./
RUN go mod download
COPY *.go ./
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /my_app
CMD ["/my_app"] 
