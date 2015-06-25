### Usage for this Dockerfile

- This Dockerfile can build a Docker Image which is used for storing our automation codes.

```
$ docker build -t git .
```

- Build the docker container as a deamon and share storage to other docker containers who really run automaion

- Collect automation run results if needed.(TODO)

```
$ docker run --itd -v /data/ --name git-branch_name git /bin/bash
```

### Usage of git

- clone single branch
```
$ git clone -b maitai2 --single-branch git@qe-git.englab.nay.redhat.com:~/repo/hss/tools-automation
```
