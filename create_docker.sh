
cp ../target/vhub-smart-trailer-server-0.0.1-exec.jar .
docker build . -t 727878946904.dkr.ecr.us-west-2.amazonaws.com/vhub2server:0.0.1
rm -f vhub-smart-trailer-server-0.0.1-exec.jar

sleep 30