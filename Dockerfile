FROM alpine:3.22

LABEL org.opencontainers.image.title="beadpattern-site-kit"
LABEL org.opencontainers.image.description="Small URL helpers for BeadPattern, the free bead pattern generator."
LABEL org.opencontainers.image.url="https://beadpattern.net"
LABEL org.opencontainers.image.source="https://github.com/bbwdadfg/beadpattern-site-kit"
LABEL org.opencontainers.image.licenses="MIT"

COPY docker/beadpattern-site-kit /usr/local/bin/beadpattern-site-kit

ENTRYPOINT ["beadpattern-site-kit"]
CMD ["home"]
