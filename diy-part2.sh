#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate
#sed -i 's/ImmortalWrt/RAX3000M/g' package/base-files/files/bin/config_generate
#sed -i "s/hostname='.*'/hostname='RAX3000M'/g" package/base-files/files/bin/config_generate

#修改wifi名称（mtwifi-cfg）
#sed -i 's/ImmortalWrt-2.4G/NETGEAR92/g' package/mtk/applications/mtwifi-cfg/files/mtwifi.sh
#sed -i 's/ImmortalWrt-5G/NETGEAR92-5G/g' package/mtk/applications/mtwifi-cfg/files/mtwifi.sh

##修改wifi名称（旧）
#sed -i "s/MT7981_AX3000_2.4G/NETGEAR92/g" package/mtk/drivers/wifi-profile/files/mt7981/mt7981.dbdc.b0.dat
#sed -i "s/MT7981_AX3000_5G/NETGEAR92-5G/g" package/mtk/drivers/wifi-profile/files/mt7981/mt7981.dbdc.b1.dat

#删除冲突的软件包
#rm -rf ./package/istore
#rm -rf ./feeds/kenzo/luci-app-quickstart
#rm -rf ./feeds/kenzo/luci-app-store
#rm -rf ./feeds/kenzo/luci-lib-taskd

##加入作者信息
#sed -i "s/DISTRIB_DESCRIPTION='*.*'/DISTRIB_DESCRIPTION='BING-$(date +%Y%m%d)'/g"  package/base-files/files/etc/openwrt_release
#sed -i "s/DISTRIB_REVISION='*.*'/DISTRIB_REVISION=' By BING'/g" package/base-files/files/etc/openwrt_release
#sed -i "2iuci set istore.istore.channel='BING'" package/emortal/default-settings/files/99-default-settings
#sed -i "3iuci commit istore" package/emortal/default-settings/files/99-default-settings
#sed -i.bak "s,mirrors.vsean.net/openwrt,mirrors.vsean.net/openwrt,g" package/emortal/default-settings/files/99-default-settings
