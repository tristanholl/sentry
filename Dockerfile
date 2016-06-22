FROM sentry:8.4.1

MAINTAINER Tristan Holl

# Install Slack integration
RUN pip install sentry-slack

COPY sentry.conf.py /etc/sentry/
