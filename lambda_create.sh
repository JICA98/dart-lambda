mkdir -p build/lambda
dart compile exe bin/dart_lambda.dart -o build/lambda/bootstrap
cd build/lambda || exit
zip lambda.zip bootstrap

aws lambda create-function --function-name dart_lambda \
  --role 'arn:aws:iam::1234:role/service-role/dal_lambda-role-boh0l6v4' \
  --runtime provided.al2 --handler hello.handler \
  --description 'An AWS Serverless function using Dart' \
  --timeout 15 \
  --memory-size 128 \
  --zip-file fileb://./lambda.zip
