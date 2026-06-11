FROM alpine:3.19

RUN apk add --no-cache wget unzip ca-certificates

WORKDIR /app

RUN wget -O v2ray.zip https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip \
    && unzip v2ray.zip \
    && rm v2ray.zip

COPY config.json /app/config.json

EXPOSE 8080

CMD ["./v2ray", "run", "-config", "/app/config.json"]
