## GCP Pub Sub Emulator

This repository contains GCP Pub Sub Emulator wrapped into the docker image.
[GCP Pub Sub Emulator](https://cloud.google.com/pubsub/docs/emulator) allows to develop locally against GCP Pub Sub serivce.

It provides 3 configurable variables with default values:

| Name         | Description                   | Default Value |
|--------------|-------------------------------|---------------|
| `PORT`       | Port used by the Emulator     | 8085          |
| `PROJECT_ID` | [Valid Google Cloud project ID](https://cloud.google.com/resource-manager/reference/rest/v1/projects#Project) | local         |
| `DATA_DIR`   | Location of Emulator data     | /opt/pubsub   |

Minimal (and for most cases sufficient) configuration to start is:
`docker run -d -p 8085:8085 poznachowski/gcp-pubsub-emulator:latest`
