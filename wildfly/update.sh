#!/bin/bash

update() {
sedStr="
  s!%%WILDFLY_VERSION%%!$version!g;
"

sed -r "$sedStr" $1
}

versions=(11.0.0.Final 12.0.0.Final 13.0.0.Final)
for version in ${versions[*]}; do
  mkdir $version
  update Dockerfile.template > $version/Dockerfile
done