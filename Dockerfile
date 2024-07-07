FROM ghcr.io/ssangyongsport/chaskiqthrj:sha-c3ef1be

COPY --chmod=755 start.sh ./

ENTRYPOINT ["/bin/sh"]

CMD ["start.sh"]
