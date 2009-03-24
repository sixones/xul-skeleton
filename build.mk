TIERS += app

ifdef MOZ_EXTENSIONS
	tier_app_dirs += extensions
endif

tier_app_dirs += \
  __APP_NAME__ \
  $(NULL)

ifdef MOZ_MOCHITEST
tier_testharness_dirs += \
  testing/mochitest \
  __APP_NAME__/tests \
  $(NULL)
endif

installer:
	@echo "__APP_DISPLAY_NAME__ doesn't have an installer yet."
	@exit 1

package:
	@$(MAKE) -C __APP_NAME__/installer

install::
	@echo "__APP_DISPLAY_NAME__ cannot be installed directly."
	@exit 1