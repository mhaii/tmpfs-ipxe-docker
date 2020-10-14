FROM sebp/lighttpd

VOLUME ["/assets"]

COPY entrypoint.sh /
RUN chmod a+x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD [""]
