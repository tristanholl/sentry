FROM sentry:8.5.0

MAINTAINER solarisBank

# Install Slack integration
RUN pip install sentry-slack

# Install Github integration
RUN pip install sentry-github

# Install Trello integration
RUN pip install sentry-trello

# Copy custom sentry config
COPY sentry.conf.py /etc/sentry/

# Remove old organization logo
RUN rm /usr/local/lib/python2.7/site-packages/sentry/static/sentry/images/default-organization-logo.png

# Copy new organization logo
COPY logo.png /usr/local/lib/python2.7/site-packages/sentry/static/sentry/images/default-organization-logo.png
