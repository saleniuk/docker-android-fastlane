FROM jacekmarchwicki/android:ubuntu-16-04-java7-8

RUN apt-add-repository ppa:brightbox/ruby-ng
RUN apt-get update
RUN apt-get -y install --no-install-recommends \
    curl \
    ruby2.4 \
    ruby2.4-dev 

# Install Make
RUN apt-get update && apt-get install make

# Install Fastlane
RUN gem install fastlane -NV
