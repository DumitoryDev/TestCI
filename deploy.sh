#!/bin/bash

if [ "${TRAVIS_COMPILER}" != "gcc" ]; then
    echo "Deployment will be skipped for: ${TRAVIS_COMPILER}"
    exit 0
fi

files=$(ls *.deb)

for file in ${files}
do
    curl -f -T ${file} -udumitory:${BINTRAY_API_KEY} "https://api.bintray.com/content/dumitory/Test/Testing${TRAVIS_BUILD_NUMBER}/${file};deb_distribution=xenial;deb_component=main;deb_architecture=amd64;publish=1"
done