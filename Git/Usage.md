### Usage for this Dockerfile

- This Dockerfile can build a Docker Image which used for storing our automation codes.

```
$ docker build git .
```

- Build the docker container as a deamon and share storage to other docker containers who really run automaion

- Collect automation run results if needed.(TODO)

```
$ docker run --itd -v /data/ --name git-branch_name git /bin/bash
```
