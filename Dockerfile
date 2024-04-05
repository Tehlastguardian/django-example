FROM gliderlabs/herokuish
COPY . /tmp/app
RUN /build && rm -Rf /tmp/*
ENTRYPOINT [ "/start" ]
CMD [ "web" ]
