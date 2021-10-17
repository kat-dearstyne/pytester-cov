# Container image that runs your code
ARG python_version
FROM python:${python_version}

ARG pytest_root_dir
ARG pytest_tests_dir
ARG cov_omit_list
ARG requirements_file
ARG cov_threshold_single
ARG cov_threshold_total

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

RUN ["chmod", "+x", "/entrypoint.sh"]

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT [
    "/entrypoint.sh",
    $pytest_root_dir,
    $pytest_tests_dir,
    $cov_omit_list,
    $requirements_file,
    $cov_threshold_single,
    $cov_threshold_total
]
