| | |
|---|---|
| Docker | [![Docker](https://img.shields.io/docker/cloud/build/fptiangco/django-bare?label=Docker&style=flat)](https://hub.docker.com/r/fptiangco/django-bare/builds) ![Docker Pulls](https://img.shields.io/docker/pulls/fptiangco/django-bare) ![Docker Image Version (latest semver)](https://img.shields.io/docker/v/fptiangco/django-bare?sort=semver) |
| Scans | [![Updates](https://pyup.io/repos/github/fptiangco/django-bare/shield.svg)](https://pyup.io/repos/github/fptiangco/django-bare/) |

### Quickstart
* A bare django image built from the first section of the official django tutorial
* Solely for testing

##### Docker build + run
```
# Build
docker build . -t django-bare

# Run on localhost:8000
docker run -p 8000:8000 django-bare
```
##### Dockerhub run
```
docker run -p 8000:8000 fptiangco/django-bare:<tag>
```
##### View
http://localhost:8000
http://localhost:8000/admin (djangobareadmin / djangobareadmin)

