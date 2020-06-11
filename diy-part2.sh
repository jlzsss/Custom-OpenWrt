#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate


git clone -b test https://github.com/frainzy1477/luci-app-clash.git package/luci-app-clash
git clone -b master https://github.com/vernesong/OpenClash.git package/OpenClash
git clone https://github.com/jlzsss/luci-app-ssr-plus-Jo.git package/luci-app-ssr-plus-Jo
git clone https://github.com/jlzsss/luci-app-ssr-plus-jo-depend.git package/luci-app-ssr-plus-jo-depend
git clone https://gitee.com/wangfuying_admin/Docker-For-OpenWRT.git package/docker
git clone https://github.com/lisaac/luci-app-dockerman.git package/luci-app-dockerman
git clone https://github.com/tzxiaozhen88/luci-app-koolproxyR.git package/luci-app-koolproxyR
# git clone https://github.com/jerrykuku/luci-app-vssr.git package/luci-app-vssr
# git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb
git clone https://github.com/jlzsss/luci-app-passwall.git package/luci-app-passwall
# git clone https://github.com/jlzsss/openwrt-ssr-libev-full.git package/openwrt-ssr-libev-full
git clone https://github.com/jlzsss/luci-app-shadowsocksr.git package/luci-app-shadowsocksr
# git clone https://github.com/jlzsss/openwrt-ssr.git package/openwrt-ssr
	
./scripts/feeds update -a
./scripts/feeds install -a
