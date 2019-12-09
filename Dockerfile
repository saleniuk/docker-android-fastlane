FROM jacekmarchwicki/android:ubuntu-16-04-java7-8

RUN apt-get -y install --no-install-recommends \
    curl \
    ruby2.4 \
    ruby2.4-dev \
    build-essential \
    file \
    ssh

# Install Fastlane
RUN gem install fastlane -NV

# Install Make
RUN apt-get update && apt-get install make
