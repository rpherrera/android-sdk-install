#!/bin/bash

set -ex

if [ ! -f /vagrant/.apt-updated ]; then
  apt-get update && touch /vagrant/.apt-updated
fi

if [ ! -f /vagrant/.android-skd-installed ]; then
  mkdir -p /vagrant/packages
  wget -q https://dl.google.com/android/android-sdk_r24.4.1-linux.tgz -O /vagrant/packages/android-sdk_r24.4.1-linux.tgz
  pushd /vagrant/packages
    tar xf android-sdk_r24.4.1-linux.tgz
    pushd android-sdk-linux
      ( sleep 5 && while [ 1 ]; do sleep 1; echo y; done ) | tools/android update sdk --no-ui
    popd
  popd
  touch /vagrant/.android-skd-installed
fi
