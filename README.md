# tree
Small Docker Image to run the Linux "tree" command on a specified path (or current directory by default)

## Description

Have you ever been in a situation where you wanted to run the "tree" command, but it is not installed, and you do not have privileges to install it?
If you happen to have privileges to run Docker, then you can use this Docker container to run the tree command, mounting the folder of interest in the container.

## Use

    docker container run --rm -it -v $(pwd):$(pwd) iankoulski/tree $(pwd)


This prints the tree structure of your current working directory. Replace $(pwd) with a specific path to print the tree from that path down.

## Conclusion

Thanks to Docker you can run the "tree" command even when it is not installed on the host.

This repository is an example of a Depend-on-Docker project. See Depend-on-Docker talk at [DockerCon'18](https://2018.dockercon.com/agenda/)


