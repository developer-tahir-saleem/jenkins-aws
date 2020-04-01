#####  Cookbook: Java -> Maven -> Docker -> AWS ECR -> AWS ECS (Fargate)
https://medium.com/@niclasgustafsson/cookbook-java-maven-docker-aws-ecr-aws-ecs-fargate-e12cfc126050




###### AWS Setup
IAM Access
- create cli custome profile 

````
$ aws configure --profile devops@dev
````

- cli list of credential key & value profile 
````
$ aws configure list
````

- view all profile 
````
$ cat ~/.aws/credentials
````
- check help 
````
$ aws configure help
````
- get access User using selected profile 
````
$ aws iam list-users --profile devops@dev
````
- get access S3 using selected profile 
````
$ aws s3 ls --profile devops@dev
````

- set output formate using selected profile 
````
$ sudo nano ~/.aws/credentials
````
Note : add (output = table) underthe spacific profile  test
````
$ aws iam list-users --profile devops@dev
````

- Set region is must be region=us-east-1 for Fraget 
- set output formate using selected profile 
````
$ sudo nano ~/.aws/credentials
````
###### Jenkins
Set up Jenkins environment

- setup docker container jenkins
````
$ docker run  -p 9595:8080 -v jenkins_home:/var/jenkins_home  -v $HOME:/home -v /var/run/docker.sock:/var/run/docker.sock  ngmg/jaws:2.109-alpine -d
````





