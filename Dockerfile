# Container image that runs your code
FROM alpine:latest

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY docker-action /docker-action
COPY entrypoint.sh /entrypoint.sh

RUN apk add --update --no-cache docker
RUN ["chmod", "+x", "/entrypoint.sh"]

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]

# ARG python_version
# FROM python:${python_version}
# # RUN echo ${python_version}
# RUN pip install pytest pytest-cov
# COPY entrypoint.sh /
# RUN chmod +x /entrypoint.sh
# ENTRYPOINT ["/entrypoint.sh"]
