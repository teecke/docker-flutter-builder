# Based on https://github.com/adamantium-architects/docker-flutter
FROM ubuntu:19.04

ENV ANDROID_HOME="/opt/android-sdk" \
    PATH="/opt/android-sdk/tools/bin:/opt/flutter/bin:/opt/flutter/bin/cache/dart-sdk/bin:$PATH"

RUN apt-get update \
    && apt-get -y install --no-install-recommends curl git lib32stdc++6 openjdk-8-jdk-headless unzip \
    && apt-get --purge autoremove \
    && apt-get autoclean \
    && rm -rf /var/lib/apt/lists/*

RUN git clone -b stable https://github.com/flutter/flutter.git /opt/flutter \
    && cd /opt/flutter \
    && git reset --hard $(git rev-list -1 $(git describe --tags @{u}))

ARG SDK_TOOLS=sdk-tools-linux-4333796.zip

RUN curl -s -O https://dl.google.com/android/repository/${SDK_TOOLS} \
    && mkdir /opt/android-sdk \
    && unzip ${SDK_TOOLS} -d /opt/android-sdk \
    && rm ${SDK_TOOLS}

RUN mkdir ~/.android \
    && echo 'count=0' > ~/.android/repositories.cfg \
    && yes | sdkmanager --licenses \
    && sdkmanager "tools" "platform-tools"

ARG PLATFORM_TOOLS=android-29
ARG BUILD_TOOLS=29.0.2

RUN sdkmanager "build-tools;${BUILD_TOOLS}" "platforms;${PLATFORM_TOOLS}" \
    && flutter doctor -v | tee /flutter.info \
    && chown -R root:root /opt
