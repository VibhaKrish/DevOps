# Use existing docker image as base
FROM alpine
RUN apk add --update redis

CMD ["redis-server"]
