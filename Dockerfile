FROM golang
WORKDIR /app
COPY . /app
RUN go get -d ./... && go build -o main
ENTRYPOINT [ "./main" ]