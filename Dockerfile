FROM jacekmarchwicki/android:ubuntu-16-04-java7-8

# Install Make
RUN apt-get update && apt-get install make

# Install Fastlane
RUN gem install fastlane -NV
