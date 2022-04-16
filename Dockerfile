FROM python:alpine3.15

# Security fixes
RUN apk upgrade expat libuuid

# Container setup
ARG DOCKER_UNAME=container
ARG DOCKER_UID=1000
ARG WORKDIR=/work/
ENV DOCKER_UNAME=${DOCKER_UNAME}
RUN addgroup -S ${DOCKER_UNAME}
RUN adduser -S ${DOCKER_UNAME} -G ${DOCKER_UNAME} -u ${DOCKER_UID}

# App setup
RUN mkdir ${WORKDIR}
WORKDIR ${WORKDIR}
ADD requirements.txt ${WORKDIR}requirements.txt
RUN pip install -r requirements.txt
COPY ./src/mysite ${WORKDIR}

# Run app
RUN chown -R ${DOCKER_UNAME}:${DOCKER_UNAME} ${WORKDIR}
USER ${DOCKER_UNAME}
EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
