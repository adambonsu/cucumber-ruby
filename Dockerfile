FROM ruby:2.4.2-jessie

MAINTAINER Adam Bonsu <email@adambonsu.com>

RUN mkdir -p /cucumber
COPY . /cucumber
ADD startup.sh /
WORKDIR /cucumber
RUN gem install cucumber -v '3.0.2'
RUN gem install rspec -v '3.4.0'
RUN gem install rspec-collection_matchers -v '1.1.2'
ENTRYPOINT ["cucumber", "-r", "features"]
CMD ["features"]
