FROM ghcr.io/ssangyongsport/chaskiqthrj:sha-c6743c1

COPY --chmod=755 start.sh ./

ENTRYPOINT ["/bin/sh"]

CMD ["start.sh"]
