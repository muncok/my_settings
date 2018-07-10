apt-get install tzdata
echo Asia/Seoul >/etc/timezone && \
ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime && \
dpkg-reconfigure -f noninteractive tzdata
