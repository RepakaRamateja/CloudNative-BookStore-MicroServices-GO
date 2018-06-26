FROM alpine:3.5

COPY ./Cloud-Native-Go /app/Cloud-Native-Go
RUN chmod +x /app/Cloud-Native-Go

ENV PORT 8080
EXPOSE 8080

ENTRYPOINT /app/Cloud-Native-Go
