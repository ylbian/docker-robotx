### Usage for this Dockerfile

- This Dockerfile can build a Docker Image which is used for running automation.

```
$ docker build -t run:0.1.0 .
```


- This Docker image containers:

    * Firefox -- browser
    * Xvfb -- build fake display so we can run Firfox
    * python-pip -- to install robotframework and selenium2library
    * robotframework -- run automation
    * selenium2library -- library used in scripts



- We can build a Docker container mount the storage container, which containers automation codes, and also we have the permission read/write.

```
$ docker run -it --volumes-from storage_container_name --name run_container_name run:0.1.0 /bin/bash
```


- Run automation just like in our local PC

```
$ pybot test.txt
```
