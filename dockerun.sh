#!/bin/bash
# APP and Image name
APP_NM="gfpip"
# Container name
CTN_NM="gfpip"
PKG_DIR=${PWD}/packages/
NTV_PORT=8125
CTN_PORT=8125
docker stop ${APP_NM} || true && \
docker rm ${APP_NM} || true && \
echo ${PWD}
docker run -d --restart=always -v=${PKG_DIR}:/${APP_NM}/packages/ -p ${NTV_PORT}:${CTN_PORT} --name=${CTN_NM} ${APP_NM}
