  
FROM hashicorp/terraform:latest

RUN \
  apk update && \
  apk add bash py-pip && \
  apk add --virtual=build gcc libffi-dev musl-dev openssl-dev python3-dev make && \
  pip install azure-cli && \
  apk del --purge build 