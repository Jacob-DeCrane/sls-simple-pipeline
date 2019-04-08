#! /bin/bash

echo "Installing serverless"
echo "====================="
npm install -g serverless
# we have to install plugins specified in our serverless.yml to avoid errors, even though we aren't using them.
npm install serverless-stage-manager serverless-pseudo-parameters serverless-plugin-canary-deployments

echo "Deploying app to $env"
echo "====================="
serverless deploy --stage $env --package $CODEBUILD_SRC_DIR/artifacts/$env -v
