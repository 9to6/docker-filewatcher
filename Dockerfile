FROM ruby:2.4-alpine

RUN gem install --no-rdoc --no-ri filewatcher
RUN apk add --no-cache curl

ENTRYPOINT ["filewatcher"]
