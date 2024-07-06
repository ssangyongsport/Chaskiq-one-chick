# https://hub.docker.com/r/chatwoot/chatwoot/tags
FROM ghcr.io/ssangyongsportsorg/chaskiqyh:latest


COPY --chmod=755 start.sh ./

ENTRYPOINT ["/bin/sh"]

CMD ["start.sh"]
