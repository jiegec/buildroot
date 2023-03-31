################################################################################
#
# pth_hello package
#
################################################################################

PTH_HELLO_VERSION = 1.0
PTH_HELLO_SITE = package/pth_hello/src
PTH_HELLO_SITE_METHOD = local# Other methods like git,wget,scp,file etc. are also available.

define PTH_HELLO_BUILD_CMDS
	$(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)
endef

define PTH_HELLO_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/pth_hello  $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
