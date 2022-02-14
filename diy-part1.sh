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

# Add Custom feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
echo 'src-git helloworld https://github.com/fw876/helloworld.git' >> 'feeds.conf.default'

####### Replace with JerryKuKu’s Argon
rm openwrt/package/lean/luci-theme-argon -rf #delete original argon theme
echo 'src-git https://github.com/jerrykuku/luci-theme-argon.git' >> 'feeds.conf.default' #repleace with JerryKuKu’s Argon
echo 'src-git https://github.com/jerrykuku/luci-app-argon-config.git' >> 'feeds.conf.default' #add JerryKuKu’s Argon Config Feature
