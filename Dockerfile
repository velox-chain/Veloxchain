FROM ethereum/client-go:stable

WORKDIR /app

COPY genesis.json /app/genesis.json
COPY start.sh /app/start.sh

RUN chmod +x /app/start.sh

EXPOSE 8545

CMD ["/bin/sh", "/app/start.sh"]
