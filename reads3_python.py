import boto3
import json


def lambda_handler(event, context):
    # TODO implement
    s3 = boto3.client('s3')
    print(event)
    print(s3)
    response = s3.list_buckets()
    # Get a list of all bucket names from the response
    buckets = [bucket['Name'] for bucket in response['Buckets']]

    # Print out the bucket list
    print("Bucket List: %s" % buckets)
    obj = s3.get_object(Bucket='testdc222', Key='empty1.fastq')
    print(obj)
    stuff = obj['Body'].read()
    print(stuff)
    return 'Hello from Lambda'

