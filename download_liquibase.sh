#!/bin/bash
VERSION="${1:-"$(curl -s https://github.com/liquibase/liquibase/releases/latest | grep -o "v.*" | sed s/'>.*'//g |  sed s/'v'//g | sed 's/"//g')"}"
curl -L https://github.com/liquibase/liquibase/releases/download/v${VERSION}/liquibase-${VERSION}.tar.gz --output liquibase-${VERSION}.tar.gz
