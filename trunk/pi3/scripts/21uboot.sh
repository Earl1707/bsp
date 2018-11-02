# uboot

VERSION_uboot=2018.09

echo 
echo ..... compile uboot-$VERSION_uboot .....

cd $dir_dev
rm -rf u-boot-$VERSION_uboot
bunzip2 -cd $dir_archive/u-boot-$VERSION_uboot.tar.bz2 | tar -x

cd $dir_dev/u-boot-$VERSION_uboot
make CROSS_COMPILE=$TARGET- TARGET_ARCH=$CPU rpi_3_defconfig
export PATH=$dir_bin:$PATH && make CROSS_COMPILE=$TARGET- TARGET_ARCH=$CPU

#cd $(dir_opt)/u-boot-$(VERSION_uboot) && patch -p1 < $(dir_patch)/u-boot-$(VERSION_uboot)-dinema.patch
#cd $(dir_opt)/u-boot-$(VERSION_uboot) && cp $(dir_patch)/dinema.bmp tools/logos/dinema.bmp

#export PATH=$(dir_bin):$(PATH) && cd $(dir_opt)/u-boot-$(VERSION_uboot)  && make  HOSTCC="$(TARGET)-" CROSS_COMPILE="$(TARGET)-" TARGET_ARCH=$(CPU) mx6solosk5750_config
#export PATH=$(dir_bin):$(PATH) && cd $(dir_opt)/u-boot-$(VERSION_uboot)  && make  HOSTCC="gcc" HOSTSTRIP="strip" CROSS_COMPILE="$(TARGET)-" TARGET_ARCH=$(CPU) LOGO_BMP=logos/dinema.bmp all
#cp -f $(dir_opt)/u-boot-$(VERSION_uboot)/u-boot.imx $(dir_boot)/u-boot-mx6solo.bin




#make distclean
#make ARCH=arm CROSS_COMPILE="arm-engicam-linux-gnueabi-" imx6qdl_icore_mmc_config
#make CROSS_COMPILE="arm-engicam-linux-gnueabi-" imx6qdl_icore_mmc_config

#http://www.informit.com/articles/article.aspx?p=1647051&seqNum=4
