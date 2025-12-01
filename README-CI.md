# Dockerfile & Building Images

## Whats Contained In This Repository?
The web content in this repository is stylized after "old-internet" and "vaporwave". Website was made using Google AI Studio using the following prompt:

```
Create an index and about html page with a css theme that has "old-internet" "vaporwave" style.
```

[Link to Web Content](Project4/web-content/)

The Dockerfile contained in this repo builds an Ubuntu image built on httpd that deploys a vaporwave-themed web server to the httpd web content directory.

[Link to Dockerfile](Project4/web-content/Dockerfile)

## How To Build an Image

To build an image from the repository, in the `web-content` directory run the following command:

`docker build -t IMAGE_NAME .`

This will create an image with a specified name using all contents within the current directory.

To build a tagged image for DockerHub, run the following command:

`docker build -t DOCKERHUB_USERNAME/REPONAME:IMAGE_TAG .`

where `DOCKERHUB_USERNAME` is the username of the users DockerHub account, `REPONAME` is the repository that belongs to the username, and `IMAGE_TAG` contains the version of the image (ex. "v1.1.0" or "latest").

## How To Run a Container

To run a container after building an image, run the following command:

`docker run -d -p 8080:80 --name CONTAINER_NAME IMAGE_NAME:IMAGE_TAG`

where `-d` runs the container detached, `-p` opens port `8080` and `80` to connect to the web server, and `CONTAINER_NAME` is the user-defined container name. 