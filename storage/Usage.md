### Usage for this Dockerfile

- This Dockerfile can build a Docker Image which is used for storing our automation codes.

```
$ docker build -t storage:0.1.0 .
```

- Build the docker container as a deamon and share storage to other docker containers who really run automaion


```
$ docker run --itd -v /data/ --name git-branch_name git /bin/bash
```


- Collect automation run results if needed.(TODO)

- Or we need build another Docker image for collecting automation reports and write the results to TCMS.


### Usage of git

- clone single branch
```
$ git clone -b maitai2 --single-branch git@qe-git.englab.nay.redhat.com:~/repo/hss/tools-automation
```
