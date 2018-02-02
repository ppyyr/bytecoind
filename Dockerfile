FROM alpine:3.7
LABEL maintainer="Sora Lee<ppyyr@live.jp>"
RUN apk add --no-cache curl && \
curl https://bytecoin.org/storage/wallets/bytecoin_reference_client/bytecoin-2.1.2-linux.tar.gz | tar -zxf - && \
mv bytecoin-2.1.2-linux bytecoin
WORKDIR /bytecoin
EXPOSE 8080 8081
ENTRYPOINT ["./launch", "bytecoind"]