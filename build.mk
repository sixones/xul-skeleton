TIERS += app

ifdef MOZ_EXTENSIONS
	tier_app_dirs += extensions
endif

tier_app_dirs += \
  {%APP_NAME%} \
  $(NULL)

ifdef MOZ_MOCHITEST
tier_testharness_dirs += \
  testing/mochitest \
  {%APP_NAME%}/tests \
  $(NULL)
endif

installer:
	@echo "{%APP_DISPLAY_NAME%} doesn't have an installer yet."
	@exit 1

package:
	@$(MAKE) -C {%APP_NAME%}/installer

install::
	@echo "{%APP_DISPLAY_NAME%} cannot be installed directly."
	@exit 1