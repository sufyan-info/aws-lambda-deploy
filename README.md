# aws-lambda-deploy
A Docker Image to be used by gitlab ci in order to deploy the codes to lambda

Example .gitlab-ci.yml
```yml
variables: 
  AWS_ACCESS_KEY_ID: <<YOUR_ACCESS_KEY>>
  AWS_SECRET_ACCESS_KEY: <<YOUT_SECRET_KEY>>
  AWS_DEFAULT_REGION: us-east-1

deploy-production:
  only:
    refs:
      - master
  services:
    - docker:dind
  stage: deploy
  image: super37/aws-lambda-deploy
  script:
    - zip -r func.zip .
    - aws lambda update-function-code 
      --function-name <<the_name_of_the_lambda_function>
      --zip-file fileb://func.zip

```
