#!/bin/bash
wget https://s3-us-west-2.amazonaws.com/dynamodb-local/dynamodb_local_latest.zip
sudo unzip dynamodb_local_latest.zip -d /opt/dynamodb
rm dynamodb_local_latest.zip
java -Djava.library.path=/opt/dynamodb/DynamoDBLocal_lib/ -jar /opt/dynamodb/DynamoDBLocal.jar
