FROM ghcr.io/ssangyongsport/chaskiqthrj:latest

COPY --chmod=755 start.sh ./

ENTRYPOINT ["/bin/sh"]

CMD ["start.sh"]
