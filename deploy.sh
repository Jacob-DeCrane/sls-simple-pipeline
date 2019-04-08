#! /bin/bash

echo "Installing serverless"
echo "====================="
npm install -g serverless
npm install # we have to install plugins specified in our serverless.yml to avoid errors, even though we aren't using them.

echo "Deploying app to $env"
echo "====================="
serverless deploy --stage $env --package $CODEBUILD_SRC_DIR/artifacts/$env -v
