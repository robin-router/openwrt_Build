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
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
#sed -i '$a src-git s1oz https://github.com/s1oz/package' feeds.conf.default

#echo '下载passwall'
#sed -i '$a src-git xiaorouji https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
#git clone https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall

#echo '下载SSR'
#git clone https://github.com/fw876/helloworld package/helloworld

#echo '下载ServerChan'
#git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan

echo '下载bandwidthd'
git clone https://github.com/AlexZhuo/luci-app-bandwidthd.git package/luci-app-bandwidthd

#echo '下载eqos'
#git clone https://github.com/swxk521/luci-app-eqos.git package/luci-app-eqos

#echo '下载poweroffdevice'
#git clone https://github.com/sirpdboy/luci-app-poweroffdevice.git package/luci-app-poweroffdevice

#echo '下载主题'
#git clone https://github.com/sirpdboy/luci-theme-opentopd.git package/luci-theme-opentopd

#echo '下载wolplus'
#svn co https://github.com/sirpdboy/sirpdboy-package/trunk/luci-app-wolplus package/

#echo '下载wrtbwmon'
#rm -rf ./package/lean/luci-app-wrtbwmon
#rm -rf ./package/lienol/luci-app-wrtbwmon
#git clone https://github.com/brvphoenix/luci-app-wrtbwmon package/luci-app-wrtbwmon
