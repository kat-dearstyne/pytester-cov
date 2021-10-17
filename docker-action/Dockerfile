# Container image that runs your code
ARG pytest_root_dir
ARG pytest_tests_dir
ARG cov_omit_list
ARG requirements_file
ARG cov_threshold_single
ARG cov_threshold_total
ARG python_version

ENV pytest_root_dir
ENV pytest_tests_dir
ENV cov_omit_list
ENV requirements_file
ENV cov_threshold_single
ENV cov_threshold_total
ENV python_version

FROM python:${python_version}

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

RUN ["chmod", "+x", "/entrypoint.sh"]

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
