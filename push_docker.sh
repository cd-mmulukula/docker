# login to ECR
aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 727878946904.dkr.ecr.us-west-2.amazonaws.com
# push to ECR
docker push 727878946904.dkr.ecr.us-west-2.amazonaws.com/vhub2server:0.0.1

sleep 10