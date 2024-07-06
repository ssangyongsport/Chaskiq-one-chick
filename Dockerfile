FROM ghcr.io/ssangyongsport/chaskiqthrj:sha-48c2628

COPY --chmod=755 start.sh ./

ENTRYPOINT ["/bin/sh"]

CMD ["start.sh"]
