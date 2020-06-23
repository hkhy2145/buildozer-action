#!/bin/bash

# GitHub sets root as owner of repository directory. Change it to user
sudo chown -R "$USER" "$GITHUB_WORKSPACE"
# GitHub sets HOME to /github/home, but Buildozer is installed to /home/user. Change HOME to user's home
export HOME=$HOME_DIR

# Buildozer settings to disable interactions
export BUILDOZER_WARN_ON_ROOT=0
export APP_ANDROID_ACCEPT_SDK_LICENSE=1
# Do not allow to change directories
export BUILDOZER_BUILD_DIR=./.buildozer
export BUILDOZER_BIN=./bin

# Run build
sh -c "buildozer android debug"

# Give access to root
sudo chown -R root "$GITHUB_WORKSPACE"