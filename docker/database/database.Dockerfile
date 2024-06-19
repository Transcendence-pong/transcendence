FROM postgres:alpine

COPY docker-healthcheck.sh /usr/local/bin/

HEALTHCHECK --interval=1s \
			--timeout=10s \
			--start-period=4s \
			--start-interval=2s \
			--retries=4 \
			CMD /usr/local/bin/docker-healthcheck.sh
