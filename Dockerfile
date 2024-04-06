FROM gliderlabs/herokuish
COPY . /tmp/app
RUN /build && rm -Rf /tmp/*

EXPOSE 3000
ENTRYPOINT [ "/start" ]
CMD [ "web" ]
