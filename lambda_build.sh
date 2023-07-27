mkdir -p build/lambda
dart compile exe bin/dart_lambda.dart -o build/lambda/bootstrap
cd build/lambda || exit
zip lambda.zip bootstrap
aws lambda update-function-code --function-name dart_lambda --zip-file fileb://./lambda.zip