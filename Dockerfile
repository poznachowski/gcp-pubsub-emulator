FROM google/cloud-sdk:321.0.0-alpine

ENV PORT=8085
ENV DATA_DIR="/opt/pubsub"
ENV PROJECT_ID="local"

COPY pubsub.sh /opt/

RUN apk add --no-cache openjdk8-jre && \
  gcloud --quiet components install beta pubsub-emulator && \
  mkdir -p ${DATA_DIR} && \
  chmod +x /opt/pubsub.sh

EXPOSE ${PORT}

CMD ["/opt/pubsub.sh"]
