FROM ghcr.io/ssangyongsport/chaskiqthrj:sha-f9ace2a


COPY --chmod=755 start.sh ./

ENTRYPOINT ["/bin/sh"]

CMD ["start.sh"]
