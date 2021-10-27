FROM registry.gitlab.com/openbeta/openbeta-nodejs-docker:16.3

ENV APP_DIR=/apps/opentacos/
ENV GATSBY_BIN=./node_modules/.bin/gatsby
ENV GATSBY_TELEMETRY_DISABLED=1

WORKDIR ${APP_DIR}

RUN mkdir -p ${APP_DIR}

EXPOSE 80

ADD ./public ./public

ENTRYPOINT serve -l 80 ./public
