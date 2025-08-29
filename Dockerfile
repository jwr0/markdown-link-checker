FROM alpine:3

COPY check-links.sh /check-links.sh
RUN chmod +x /check-links.sh && \
    apk add --no-cache bash curl grep jq perl sed coreutils findutils

ENTRYPOINT ["/check-links.sh"]
