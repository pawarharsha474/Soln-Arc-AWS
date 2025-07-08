# Required libraries
require 'aws-sdk-s3'  # AWS SDK for S3 operations
require 'pry'        # Interactive shell for debugging
require 'securerandom' # For generating secure random strings (UUIDs)

# S3 Bucket configuration
bucket_name = ENV['BUCKET_NAME']  # Fetching bucket name from environment variables
region = 'ca-central-1'           # AWS region where the bucket will be created



