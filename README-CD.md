# CD Project Overview

# Script a Refresh

## EC2 Instance Specifications

* AMI: Amazon Linux Server
* Size: 30 GB
* SG Configuration:
    * Allows SSH Inbound from Wright State campus and Aidan's house in Dayton, OH.
    * Allows ports 80 and 8080 inbound from anywhere.
    * Allows SSH from within the VPC

## Docker Setup
To setup Docker, follow these instructions:
1. Install docker by executing the following command:
```bash
sudo yum update
sudo yum upgrade
sudo yum install docker
```
2. Enable the Docker service by executing this command:
`sudo systemctl enable --now docker`
3. To test if Docker is initialized, run the following command:
`docker run hello-world`

## Testing on Instance
To pull a Docker container image, run the following command:

`docker pull <repository>/<image_name:version>`

Example for the project 3 website:

`docker pull amcgohan/project3-website:version`

To run the container, use this command:

`docker run -d --restart always -p 8080:80 <repository>/<image_name:version>`

`-d` runs the container in a detached instance, so you are able to use your OS freely.
`-p` binds the container to port `8080` that can be accessed outside of the host system.

To test the container after running/starting it, use this command:

`docker exec -it <container_name> bash`

`-i` allows standard input to the container that can be used for testing
`-t` allows the use of a TTY, or `teletypewriter` that acts as a virtual terminal instance.

## Scripting Container Application Refresh

The bash script executes the following actions in order:

1. Stops all running containers
2. Removes/deletes all stopped containers
3. Pulls latest image from `amcgohan/project3-website`
4. Runs the newly installed image binded to port `8080`

To test if the script works, input the public IP address of the host machine with port `8080` to your web browser. For example, `http://18.204.74.101:8080/` is a valid address to access the website.

[Link to Script](/deploy.sh)

# Listen

## Configuring a `webhook` Listener

## Configuring a `webhook` Service

# Configuring a Payload Sender

# Resources

https://www.datacamp.com/tutorial/docker-stop-all-containers
https://docs.docker.com/reference/cli/docker/container/exec/
