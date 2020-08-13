#!/bin/bash
cd openwrt
rm -rf package/lean/luci-theme-argon  #删除源码自带的argon主题，因为最下面一个链接是增加了其他作者制作的argon主题
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

#取消掉feeds.conf.default文件里面的helloworld的#注释
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default  #使用源码自带ShadowSocksR Plus+出国软件

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

#添加自定义插件链接（自己想要什么就github里面搜索然后添加）
git clone -b 18.06 https://github.com/garypang13/luci-theme-edge package/luci-theme-edge  #主题-edge-动态登陆界面
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon  #argon-主题
git clone -b master https://github.com/vernesong/OpenClash.git package/luci-app-openclash  #openclash出国软件
git clone -b master https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome  #adguardhome广告过滤
