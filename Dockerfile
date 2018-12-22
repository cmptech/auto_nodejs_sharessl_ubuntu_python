FROM cmptech/nodejs_sharessl_ubuntu:18.04

Maintainer Wanjo Chan ( http://github.com/wanjochan/ )

RUN apt update && apt install -y python build-essential procps iputils-ping
RUN echo export PATH=/\$NODE_VERSION/bin:\$PATH >> /node_env.sh

RUN . /node_env.sh \
&& npm install -g node-gyp \
&& node-gyp install \
&& rm -rf /var/lib/apt/lists/ \
&& node -v
