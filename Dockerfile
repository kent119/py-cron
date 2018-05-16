FROM kentwisers/alpine-conda
MAINTAINER Kent XU <kentxu@wisers.com>

# Install packages
RUN conda install -y pandas pymysql sqlalchemy && \
    pip install lxml bs4 logzero && \
    pip install tushare

# Init by entrypoint
# Run all scripts
COPY entrypoint.sh /

RUN chmod +x /entrypoint.sh && \
    mkdir /opt/tasks

ENTRYPOINT  ["/entrypoint.sh"]
