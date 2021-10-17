# Container image that runs your code
ARG python_version
FROM python:${python_version}

RUN pip install pytest pytest-cov

RUN ls -l

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY docker-action/entrypoint.sh /entrypoint.sh
COPY . .

RUN ["chmod", "+x", "/entrypoint.sh"]

RUN pwd
RUN ls -l

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
