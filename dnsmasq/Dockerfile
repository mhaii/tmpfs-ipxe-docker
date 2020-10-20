FROM alpine

RUN apk --no-cache add dnsmasq

EXPOSE 69/udp

# Configure DNSMASQ
COPY etc/ /etc

ENTRYPOINT ["dnsmasq", "-keep-in-foreground", "--log-facility=-"]
CMD [""]
