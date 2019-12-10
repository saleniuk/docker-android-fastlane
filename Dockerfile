FROM jacekmarchwicki/android:ubuntu-16-04-java7-8

RUN apt-get update && apt-get install sudo -y

RUN apt-add-repository ppa:brightbox/ruby-ng
RUN apt-get update
RUN apt-get -y install --no-install-recommends \
    curl \
    ruby2.4 \
    ruby2.4-dev \
    build-essential \
    file \
    ssh

RUN gem install json -v '2.2.0'

# Install Fastlane
RUN gem install fastlane -NV

# Install Make
RUN apt-get update && apt-get install make
