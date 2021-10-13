FROM python:3

ARG python-version
RUN echo $python-version

RUN pip install pytest pytest-cov
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
