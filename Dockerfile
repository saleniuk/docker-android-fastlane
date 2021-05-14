FROM jacekmarchwicki/android:ubuntu-16-04-java7-8

RUN apt-get update && apt-get install sudo -y

RUN apt-add-repository ppa:brightbox/ruby-ng
RUN apt-get update
RUN sudo apt update
RUN apt-get -y install --no-install-recommends \
    curl \
    ruby2.6 \
    ruby2.6-dev \
    build-essential \
    file \
    ssh

# Install Fastlane
RUN gem install fastlane -NV

RUN fastlane -v

# Install Make
RUN apt-get update && apt-get install make
