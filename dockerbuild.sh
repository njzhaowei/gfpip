#!/bin/bash
APP_NM="gfpip"
docker stop ${APP_NM}
docker rm ${APP_NM}
docker rmi -f ${APP_NM}
docker build -t ${APP_NM} .