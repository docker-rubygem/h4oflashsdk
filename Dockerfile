FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.0.9

RUN gem install h4oflashsdk --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["sprout-as3"]
CMD ["--help"]
