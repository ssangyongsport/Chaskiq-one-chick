# https://hub.docker.com/r/chatwoot/chatwoot/tags
FROM chaskiq/chaskiq:latest


COPY --chmod=755 start.sh ./

ENTRYPOINT ["/bin/sh"]

CMD ["start.sh"]
