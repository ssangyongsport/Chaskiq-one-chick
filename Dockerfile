FROM ghcr.io/ssangyongsportsorg/chaskiqydjdd:sha-ab1c7ff


COPY --chmod=755 start.sh ./

ENTRYPOINT ["/bin/sh"]

CMD ["start.sh"]
