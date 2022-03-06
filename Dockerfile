FROM alpine:3.14

RUN apk add --no-cache gcc musl-dev

WORKDIR /bin

COPY OTP.c OTP.c

RUN gcc OTP.c -o OTP

RUN chmod +x OTP

WORKDIR /home

ENTRYPOINT ["/bin/OTP"]