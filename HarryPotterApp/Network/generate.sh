#!/bin/sh

#  generateNetworkPackage.sh
#  hwPagingOnRealAPI
#
#  Created by Sasha Kurganova on 21.12.2022.
#

openapi-generator generate \
    -i "swagger.json" \
    --reserved-words-mappings Character=chdf \
    -g swift5 \
    --global-property models,apis,modelDocs=false,apiDocs=false,supportingFiles \
    --additional-properties swiftPackagePath=/,projectName=Network \
    -o "Network/Sources/Network"
