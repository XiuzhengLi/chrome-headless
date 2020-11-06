# Image ubuntu:16.04
FROM ubuntu:16.04

# Update & upgrade system
RUN apt-get update && \
    apt-get upgrade -yq

# Install required packages
RUN apt-get install -y libappindicator1 fonts-liberation wget libasound2 libnspr4 libnss3 libxss1 xdg-utils ca-certificates
RUN update-ca-certificates

# Install Chrome
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i google-chrome*.deb

# Create data directory
RUN mkdir /data
WORKDIR /data

# Add chrome user
RUN addgroup chrome && \
    useradd -m -g chrome chrome
USER chrome

# Expose Chrome remote debugging port
EXPOSE 9222

ENTRYPOINT ["google-chrome", "--headless", "--disable-gpu"]
