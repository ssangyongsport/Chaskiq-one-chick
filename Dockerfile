FROM ghcr.io/ssangyongsport/chaskiqthrj:sha-3e1b39f

COPY --chmod=755 start.sh ./

ENTRYPOINT ["/bin/sh"]

CMD ["start.sh"]
