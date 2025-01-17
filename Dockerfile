FROM scratch

LABEL maintainer=openwrt-x86
LABEL maintainer="Tony <https://t.me/tony_cn>"
LABEL maintainer="Tony <Tony-CN@outlook.com>"
#LABEL homepage="https://github.com/VPN-V2Ray/openwrt-x86-64"
#LABEL homepage="https://github.com/nanopi/openwrt-x86"

ARG FIRMWARE
# FIRMWARE 使用远程的URL地址的.tar.gz包时不会自动解压，因此只能添加本地文件
ADD ${FIRMWARE} /

EXPOSE 80
USER root
# using exec format so that /sbin/init is proc 1 (see procd docs)
CMD ["/sbin/init"]
