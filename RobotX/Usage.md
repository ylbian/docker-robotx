### Usage for this Dockerfile

- This Dockerfile can build a Docker Image which is used for really running automation.

```
$ docker build -t robotx .
```

- Build the docker container which mount a Git container contains automation codes, and use those code to run automation.

```
$ docker run -it --name test_robotx robotx /bin/bash
```

- Run automation test scripts just like normal

```
$ robotx run --tcms --cases=CASES_PATH \
      --planid=PLAN_ID --runid=RUN_ID --output=OUTPUT_DIR \
      --tags=CASE_TAG --priorities=CASE_PRIORITY --variable=OTHER_VARIABLE
```
