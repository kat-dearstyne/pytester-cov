ARG python_version
FROM python:${python_version}
# RUN echo ${python_version}
RUN pip install pytest pytest-cov
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
