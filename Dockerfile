FROM golang
WORKDIR /app
COPY . /app
RUN go get -d ./... && go build -o main
ENV gatewayurl="http://192.168.178.1:49000"
ENV listenurl="0.0.0.0:80"
ENV username=
ENV password=
ENTRYPOINT exec ./main -gateway-url $gatewayurl -listen-address $listenurl -username $username -password $password