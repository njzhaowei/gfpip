#!/bin/bash
APP_NM="gfpip"
NTV_PORT=8125
CTN_PORT=8125
docker stop ${APP_NM} || true && \
docker rm ${APP_NM} || true && \
echo ${PWD}
docker run -d --restart=always -v=${PWD}/packages/:/${APP_NM}/packages/ -p ${NTV_PORT}:${CTN_PORT} --name=${APP_NM} ${APP_NM}
