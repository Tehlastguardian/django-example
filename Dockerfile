FROM gliderlabs/herokuish AS build
COPY . /tmp/app
RUN /build && rm -Rf /tmp/*

RUN herokuish slug generate && \
    herokuish slug export > /app.tar.gz

FROM gliderlabs/herokuish
COPY --from=build /app.tar.gz .
RUN herokuish slug import < /app.tar.gz
ENTRYPOINT [ "start" ]
CMD [ "web" ]
