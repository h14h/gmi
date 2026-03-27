FROM golang:1.22-alpine AS builder

RUN apk add --no-cache git
RUN go install tildegit.org/solderpunk/molly-brown@e0910ee29c42191c1327932d58666433d6662da1

FROM alpine:3.19

COPY --from=builder /go/bin/molly-brown /usr/local/bin/molly-brown

WORKDIR /app
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
COPY molly.conf /app/molly.conf
COPY cert.pem /app/cert.pem
COPY content/ /app/content/
RUN chmod 755 /usr/local/bin/entrypoint.sh

EXPOSE 1965

CMD ["/usr/local/bin/entrypoint.sh"]
