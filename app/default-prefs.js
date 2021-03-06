// Chrome settings
pref("toolkit.defaultChromeURI", "chrome://__APP_NAME__/content/__MAIN_CHROME__.xul");
pref("toolkit.defaultChromeFeatures", "chrome,resizable,centerscreen,dialog=no");
pref("toolkit.singletonWindowType", "__APP_NAME__:main");

// Enable application updates
pref("app.update.enabled", true);

// Automatically download updates
pref("app.update.auto", true);

// Prompt if installed extensions are incompatible with the update
pref("app.update.mode", 1);
pref("app.update.url", "");
pref("app.update.url.manual", "");
pref("app.update.url.details", "");

// Check once a day
pref("app.update.interval", 86400);

// Enable the javascript console
pref("javascript.options.showInConsole", true);
pref("javascript.options.strict", true);

pref("browser.dom.window.dump.enabled", true);