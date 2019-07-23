# openshift-filebeat

openshift runs docker with non-root user which its group is 0.
currently filebeat official image can't be run with non-root user.


```js
docker build . -t filebeat:7.2.0-openshift
docker run --user 10000:0 filebeat:7.2.0-openshift
```
