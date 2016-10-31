FROM alpine:3.3
MAINTAINER Sean Duckett
RUN apk update && apk upgrade && \
    apk add tmux zsh
