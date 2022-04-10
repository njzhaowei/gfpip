FROM pyenv
COPY . /gfpip
WORKDIR /gfpip
RUN pip3 install -U pip --index-url http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com
RUN pip3 install -r requirements.txt --index-url http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com
CMD [ "./start.sh" ]