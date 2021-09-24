#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

echo '添加插件库'
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#sed -i '$a src-git opentopd https://github.com/sirpdboy/sirpdboy-package' feeds.conf.default
#sed -i '$a src-git diy https://github.com/firker/diy-ziyong' feeds.conf.default
#sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
#sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
#sed -i '$a src-git s1oz https://github.com/s1oz/package' feeds.conf.default
sed -i '$a src-git xiaorouji https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
#sed -i '$a src-git ssr https://github.com/fw876/helloworld' feeds.conf.default

#echo '下载ServerChan'
#git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan

echo '下载bandwidthd'
git clone https://github.com/AlexZhuo/luci-app-bandwidthd.git package/luci-app-bandwidthd

echo '下载adguardhome'
git clone https://github.com/rufengsuixing/luci-app-adguardhome package/luci-app-adguardhome
svn co https://github.com/sirpdboy/sirpdboy-package/trunk/AdGuardHome/files/etc files/etc

echo '下载eqos'
svn co https://github.com/sirpdboy/sirpdboy-package/trunk/luci-app-eqos package/luci-app-eqos

echo '下载主题'
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-argon_new package/luci-theme-argon_new

echo '下载高级设置'
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-advanced package/luci-app-advanced

#echo '下载wrtbwmon'
#rm -rf ./package/lean/luci-app-wrtbwmon
#rm -rf ./package/lienol/luci-app-wrtbwmon
#git clone https://github.com/brvphoenix/luci-app-wrtbwmon package/luci-app-wrtbwmon
