FROM ghcr.io/ssangyongsport/chaskiqthrj:sha-e6fd8c8


COPY --chmod=755 start.sh ./

ENTRYPOINT ["/bin/sh"]

CMD ["start.sh"]
