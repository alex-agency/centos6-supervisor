alexagency/centos6-supervisor
==========================

Docker Centos 6 Supervisor

Create dev workstation

```
docker-machine create -d virtualbox dev
```

Get IP address

```
docker-machine ip dev
```

Connect Docker

```
eval "$(docker-machine env dev)"
```

Copy the sources to following path:
MacOS: /Users/<USERNAME>/Docker/centos6-supervisor 
Windows: /c/Users/<USERNAME>/docker/centos6-supervisor

Build image

```
docker-machine ssh dev
cd /Users/<USERNAME>/Docker/centos6-supervisor
cd /c/Users/<USERNAME>/docker/centos6-supervisor
docker build --force-rm=true -t alexagency/centos6-supervisor .
```

Show list of all images:

```
docker images
```

To remove image by id:

```
docker rmi -f <IMAGE ID>
```
