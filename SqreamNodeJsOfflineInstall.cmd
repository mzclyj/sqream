tar -zxvf node-v12.22.10-linux-x64.tar.gz
mv node-v12.22.10-linux-x64 /usr/local/lib/nodejs/

환경설정
1. 심볼릭 링크
ln -s /usr/local/lib/nodejs/bin/node /usr/local/bin/node
ln -s /usr/local/lib/nodejs/bin/npm /usr/local/bin/npm

