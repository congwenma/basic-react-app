# Following

https://medium.com/swlh/an-example-ci-process-for-react-apps-with-docker-2247171a218

# Caveat

on `release/1.2.0`
run

> git log --pretty=format:"\* %s (%h)" v1.1.2...HEAD
> you'll get

```
- feature 3 (4bed306)
- Merge branch 'hotfix/1.1.2' into develop (d7a65ce) <-- might to remove this one.
- feature 2 (6d7e439)
- feature 1 (12772bf)
```
