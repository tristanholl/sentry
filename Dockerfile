FROM sentry:8.5.0

MAINTAINER Tristan Holl

# Install Slack integration
RUN pip install sentry-slack

COPY sentry.conf.py /etc/sentry/
RUN rm /usr/local/lib/python2.7/site-packages/sentry/static/sentry/images/default-organization-logo.png
COPY default-organization-logo.png /usr/local/lib/python2.7/site-packages/sentry/static/sentry/images/default-organization-logo.png
