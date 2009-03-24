TIERS += app

ifdef MOZ_EXTENSIONS
	tier_app_dirs += extensions
endif

tier_app_dirs += \
  @_APP_NAME_@ \
  $(NULL)

ifdef MOZ_MOCHITEST
tier_testharness_dirs += \
  testing/mochitest \
  @_APP_NAME_@/tests \
  $(NULL)
endif

installer:
	@echo "@_APP_DISPLAY_NAME_@ doesn't have an installer yet."
	@exit 1

package:
	@$(MAKE) -C @_APP_NAME_@/installer

install::
	@echo "@_APP_DISPLAY_NAME_@ cannot be installed directly."
	@exit 1