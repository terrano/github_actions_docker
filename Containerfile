FROM caddy:2.6
ARG VERSION="v1"

COPY Caddyfile /etc/caddy/Caddyfile
COPY src/index-${VERSION}.html /usr/share/caddy/index.html
COPY src/${VERSION}.jpg /usr/share/caddy/${VERSION}.jpg
