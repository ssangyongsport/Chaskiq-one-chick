FROM ghcr.io/ssangyongsport/chaskiqthrj:sha-ada916f

COPY --chmod=755 start.sh ./

ENTRYPOINT ["/bin/sh"]

CMD ["start.sh"]
