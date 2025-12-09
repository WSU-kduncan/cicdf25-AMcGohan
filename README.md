# CI/CD Repo for CEG3120

This repository contains documentation and source code for CI/CD of a vaporwave website made with Google AI Studio. Whenever a user `pushes` a commit to this repository, GitHub actions will gather content from the `web-content` directory and make a new Docker image to be published in DockerHub. After the image is published, a web-server will immediately host the image on port `8080` for a preview before publishing.

Documentation for Continuous Integration is linked [here](/README-CI.md)

Documentation for Continuous Deployment is linked [here](/README-CD.md)
