#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

git clone https://github.com/kuoruan/luci-app-kcptun.git package/luci-app-kcptun
git clone https://github.com/kuoruan/openwrt-kcptun.git package/kcptun
git clone https://github.com/jlzsss/openwrt-miredo.git package/miredo
git clone https://gitee.com/wangfuying_admin/Docker-For-OpenWRT.git package/docker
git clone https://github.com/lisaac/luci-app-dockerman.git package/luci-app-dockerman
git clone https://github.com/jlzsss/proxychains-ng.git package/proxychains-ng
git clone -b luci2 https://github.com/jlzsss/luci-app-v2ray.git package/luci-app-v2ray
git clone https://github.com/frainzy1477/luci-app-trojan.git package/luci-app-trojan
git clone -b master https://github.com/frainzy1477/luci-app-clash.git package/luci-app-clash
git clone -b master https://github.com/vernesong/OpenClash.git package/OpenClash
git clone https://github.com/jlzsss/luci-app-ssr-plus-Jo.git package/luci-app-ssr-plus-Jo
git clone https://github.com/jlzsss/luci-app-ssr-plus-jo-depend.git package/luci-app-ssr-plus-jo-depend
git clone https://github.com/project-openwrt/luci-app-koolproxyR.git package/luci-app-koolproxyR
git clone https://github.com/jlzsss/luci-app-shadowsocksr.git package/luci-app-shadowsocksr
git clone https://github.com/jlzsss/openwrt-dnsmasq-extra.git package/openwrt-dnsmasq-extra
svn co https://github.com/coolsnowwolf/luci/trunk/applications/luci-app-transmission package/feeds/luci/luci-app-transmission
# git clone https://github.com/jlzsss/dnscrypt-proxy2.git package/dnscrypt-proxy2
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-smartdns package/feeds/luci/luci-app-smartdns
svn co https://github.com/kenzok8/openwrt-packages/trunk/smartdns package/feeds/luci/smartdns
