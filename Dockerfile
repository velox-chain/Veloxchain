FROM ethereum/client-go:stable

WORKDIR /app
COPY genesis.json .
COPY start.sh .
RUN chmod +x start.sh

EXPOSE 8545
CMD ["./start.sh"]
