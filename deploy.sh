#!/bin/bash

BUCKET="s3://luminise.com.au"
REGION="ap-southeast-2"

aws s3 sync dist $BUCKET --region $REGION --delete --exclude ".*"

# aws s3 sync dist $BUCKET --region $REGION --delete \
#   --exclude "*" --include "*.css" --include "*.js" \
#   --content-encoding gzip \
#   --cache-control max-age=31536000\

# aws s3 sync dist $BUCKET --region $REGION --delete \
#   --exclude "*" --include "*.png" --include "*.jpg" \
#   --include "*.woff" --include "*.woff2" \
#   --cache-control max-age=31536000

# aws s3 sync dist $BUCKET --region $REGION --delete \
#   --exclude "*" --include "*.html" \
#   --content-type "text/html; charset=utf-8" \
#   --content-encoding gzip --cache-control no-cache

# aws s3 sync dist $BUCKET --region $REGION --delete \
#   --exclude "*.css" --exclude "*.js" \
#   --exclude "*.png" --exclude "*.jpg" \
#   --exclude "*.woff" --exclude "*.woff2" \
#   --exclude "*.html"
