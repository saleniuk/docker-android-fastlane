FROM jacekmarchwicki/android:ubuntu-16-04-java7-8

RUN apt-get update && apt-get install rubygems

# Install Make
RUN apt-get update && apt-get install make

# Install Fastlane
RUN gem install fastlane -NV
