#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

#echo '替换UPNP为2.0.20170421'
#rm -rf feeds/packages/net/miniupnpd
#svn co https://github.com/coolsnowwolf/packages/trunk/net/miniupnpd feeds/packages/net/miniupnpd

#echo '修改默认IP为192.168.1.5'
#sed -i 's/192.168.1.1/192.168.1.5/g' package/base-files/files/bin/config_generate


echo '删除默认密码'
sed -i "/CYXluq4wUazHjmCDBCqXF/d" package/lean/default-settings/files/zzz-default-settings


#echo '修改版本号'
#sed -i 's/OpenWrt/1.0 $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt/g' package/lean/default-settings/files/zzz-default-settings

#echo '修改机器名称'
#sed -i 's/OpenWrt/fish/g' package/base-files/files/bin/config_generate

#echo '删除原主题'
#rm -rf package/lean/luci-theme-argon

echo '修改默认主题'
sed -i 's/luci-theme-bootstrap/luci-theme-argon_new/g' feeds/luci/collections/luci/Makefile

echo '修改版本号'
sed -i "s/OpenWrt /s1oz build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings

echo '重定向dns'
sed -i 's/iptables -t nat -A PREROUTING -p udp --dport 53 -j REDIRECT --to-ports 53/# iptables -t nat -A PREROUTING -p udp --dport 53 -j REDIRECT --to-ports 53/g' package/lean/default-settings/files/zzz-default-settings
