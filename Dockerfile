FROM caddy:builder AS builder
RUN xcaddy build --with github.com/mholt/caddy-ratelimit
FROM caddy:alpine
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
