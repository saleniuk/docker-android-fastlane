FROM jacekmarchwicki/android:ubuntu-16-04-java7-8

RUN apt-get update && apt-get install curl

# Install build tools
# RUN apt-get update && \
#   apt-get install -y \
#   build-essential \
#   ruby \
#   ruby-dev
  
RUN curl -sSL https://get.rvm.io | bash -s stable
RUN rvm install 2.7
RUN rvm use 2.7

# Install Fastlane
RUN gem install fastlane -NV

# Install Make
RUN apt-get update && apt-get install make
