FROM ruby:3.2-alpine

RUN apk add --no-cache --update bash build-base nodejs tzdata yarn
WORKDIR /app

COPY . .

RUN bundle install

EXPOSE 4000

CMD ["jekyll", "serve", "-H", "0.0.0.0"]
