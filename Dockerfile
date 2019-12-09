FROM jacekmarchwicki/android:ubuntu-16-04-java7-8

# Install build tools
RUN apt-get update && \
  apt-get install -y \
  build-essential \
  ruby \
  ruby-dev

# Install Fastlane
RUN gem install fastlane -NV

# Install Make
RUN apt-get update && apt-get install make
