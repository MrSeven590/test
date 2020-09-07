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

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.2.1/192.168.2.100/g' package/base-files/files/bin/config_generate
#sed -i 's/#src-git helloworld https://github.com/fw876/helloworld/src-git helloworld https://github.com/fw876/helloworld/g' /feeds.conf.default

#移除不用软件包
#rm -rf xxx/xxx/xxx/文件名
rm -rf lede/package/lean/luci-theme-argon

#添加额外软件包
#git clone https://github.com/cnzd/luci-app-koolproxyR.git package        #去广告最新KPR
#git clone https://github.com/xiaorouji/openwrt-package.git xiaorouji     #常用软件集合包
#git clone https://github.com/kenzok8/openwrt-packages.git                #常用软件集合包二
#git clone https://github.com/destan19/OpenAppFilter.git                  #APP过滤应用
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean       #取消注释下载最新的argon主题
