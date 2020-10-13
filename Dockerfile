# Use jenkins LTS
FROM jenkins/jenkins:lts

# Run as root
USER root

# Install sfdx
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && apt-get install -y nodejs && npm install sfdx-cli --global && sfdx --version

# Exit root
RUN exit
