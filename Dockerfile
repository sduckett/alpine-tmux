FROM alpine:3.3
MAINTAINER Sean Duckett
RUN apk update && apk upgrade && \
    apk add tmux zsh postgresql-client

RUN adduser -h /home/tmuxer -s /bin/zsh -G root -D tmuxer
USER tmuxer
WORKDIR /home/tmuxer

COPY tmux.conf /home/tmuxer/.tmux.conf
