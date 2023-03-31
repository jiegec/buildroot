################################################################################
#
# thread_sum package
#
################################################################################

THREAD_SUM_VERSION = 1.0
THREAD_SUM_SITE = package/thread_sum/src
THREAD_SUM_SITE_METHOD = local# Other methods like git,wget,scp,file etc. are also available.

define THREAD_SUM_BUILD_CMDS
	$(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)
endef

define THREAD_SUM_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/thread_sum  $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
