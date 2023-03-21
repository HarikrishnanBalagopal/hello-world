FROM gcc as builder
WORKDIR /app
COPY hello.c ./
RUN gcc -static -o hello hello.c

FROM scratch
COPY --from=builder /app/hello /
CMD ["/hello"]
