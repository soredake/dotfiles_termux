/******************************************************************************
 * user.js																																		*
 * https://github.com/pyllyukko/user.js																			 *
 ******************************************************************************/

/******************************************************************************
 * HTML5 / APIs / DOM																												 *
 *																																						*
 ******************************************************************************/

// disable Location-Aware Browsing
// http://www.mozilla.org/en-US/firefox/geolocation/
user_pref("geo.enabled",		false);

// Don't reveal internal IPs
// http://net.ipcalf.com/
user_pref("media.peerconnection.ice.relay_only",		true);
// https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager
user_pref("dom.battery.enabled",		false);
// https://wiki.mozilla.org/WebAPI/Security/WebTelephony
user_pref("dom.telephony.enabled",		false);
// https://developer.mozilla.org/en-US/docs/Web/API/navigator.sendBeacon
user_pref("beacon.enabled",		false);
// https://developer.mozilla.org/en-US/docs/Mozilla/Preferences/Preference_reference/dom.event.clipboardevents.enabled
//user_pref("dom.event.clipboardevents.enabled",		false);
// https://wiki.mozilla.org/Security/Reviews/Firefox/NavigationTimingAPI
user_pref("dom.enable_performance",		false);

// Disable sensor API
// https://wiki.mozilla.org/Sensor_API
user_pref("device.sensors.enabled",		false);

// http://kb.mozillazine.org/Browser.send_pings
user_pref("browser.send_pings",		false);
// this shouldn't have any effect, since we block pings altogether, but we'll set it anyway.
// http://kb.mozillazine.org/Browser.send_pings.require_same_host
user_pref("browser.send_pings.require_same_host",		true);

// TODO: "Access Your Location" "Maintain Offline Storage" "Show Notifications"

// Disable gamepad input
// http://www.w3.org/TR/gamepad/
user_pref("dom.gamepad.enabled",		false);

// Disable virtual reality devices
// https://developer.mozilla.org/en-US/Firefox/Releases/36#Interfaces.2FAPIs.2FDOM
user_pref("dom.vr.enabled",		false);

// disable webGL
// http://www.contextis.com/resources/blog/webgl-new-dimension-browser-exploitation/
user_pref("webgl.disabled",		true);
// somewhat related...
//user_pref("pdfjs.enableWebGL",		false);

/******************************************************************************
 * Misc																																			 *
 *																																						*
 ******************************************************************************/

// Default search engine
//user_pref("browser.search.defaultenginename",		"DuckDuckGo");

// http://kb.mozillazine.org/Clipboard.autocopy
user_pref("clipboard.autocopy",		false);

// Display an error message indicating the entered information is not a valid
// URL instead of asking from google.
// http://kb.mozillazine.org/Keyword.enabled#Caveats
//user_pref("keyword.enabled",		false);

// Don't try to guess where i'm trying to go!!! e.g.: "http://foo" -> "http://(prefix)foo(suffix)"
// http://www-archive.mozilla.org/docs/end-user/domain-guessing.html
user_pref("browser.fixup.alternate.enabled",		false);

// https://trac.torproject.org/projects/tor/wiki/doc/TorifyHOWTO/WebBrowsers
user_pref("network.proxy.socks_remote_dns",		true);

// http://kb.mozillazine.org/Network.proxy.type
// the default in Firefox for Linux is to use system proxy settings.
// We change it to direct connection @TODO: EDIT THIS
//user_pref("network.proxy.type", 0);

// CIS 2.7.4 Disable Scripting of Plugins by JavaScript
user_pref("security.xpconnect.plugin.unrestricted",		false);

// CIS Mozilla Firefox 24 ESR v1.0.0 - 3.8 Set File URI Origin Policy
// http://kb.mozillazine.org/Security.fileuri.strict_origin_policy
user_pref("security.fileuri.strict_origin_policy",		true);

// CIS 2.3.6 Disable Displaying Javascript in History URLs
// http://kb.mozillazine.org/Browser.urlbar.filter.javascript
user_pref("browser.urlbar.filter.javascript",		true);

// http://asmjs.org/
// https://www.mozilla.org/en-US/security/advisories/mfsa2015-29/
// https://www.mozilla.org/en-US/security/advisories/mfsa2015-50/
// https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2015-2712
user_pref("javascript.options.asmjs",		false);

// https://wiki.mozilla.org/SVGOpenTypeFonts
// the iSEC Partners Report recommends to disable this
user_pref("gfx.font_rendering.opentype_svg.enabled",		false);

/******************************************************************************
 * extensions / plugins																											 *
 *																																						*
 ******************************************************************************/

// Flash plugin state - never activate
user_pref("plugin.state.flash",		0);

// https://wiki.mozilla.org/Firefox/Click_To_Play
// https://blog.mozilla.org/security/2012/10/11/click-to-play-plugins-blocklist-style/
user_pref("plugins.click_to_play",		true);

// Updates addons automatically
// https://blog.mozilla.org/addons/how-to-turn-off-add-on-updates/
user_pref("extensions.update.enabled",		true);

// http://kb.mozillazine.org/Extensions.blocklist.enabled
user_pref("extensions.blocklist.enabled",		true);

/******************************************************************************
 * firefox features / components																							*
 *																																						*
 ******************************************************************************/

// https://wiki.mozilla.org/Platform/Features/Telemetry
// https://www.mozilla.org/en-US/legal/privacy/firefox.html#telemetry
// https://wiki.mozilla.org/Security/Reviews/Firefox6/ReviewNotes/telemetry
user_pref("toolkit.telemetry.enabled",		false);

// https://wiki.mozilla.org/Polaris#Tracking_protection
// https://support.mozilla.org/en-US/kb/tracking-protection-firefox
user_pref("privacy.trackingprotection.enabled",		false);

// Disable the built-in PDF viewer (CVE-2015-2743)
// https://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2015-2743
user_pref("pdfjs.disabled",		true);

// Disable sending of the health report
// https://support.mozilla.org/en-US/kb/firefox-health-report-understand-your-browser-perf
user_pref("datareporting.healthreport.uploadEnabled",		false);
// disable collection of the data (the healthreport.sqlite* files)
user_pref("datareporting.healthreport.service.enabled",		false);

// Disable new tab tile ads & preload
// http://www.thewindowsclub.com/disable-remove-ad-tiles-from-firefox
// http://forums.mozillazine.org/viewtopic.php?p=13876331#p13876331
user_pref("browser.newtabpage.enhanced",		false);
user_pref("browser.newtab.preload",		false);
// https://wiki.mozilla.org/Tiles/Technical_Documentation#Ping
user_pref("browser.newtabpage.directory.ping",		"");

// disable heartbeat
// https://wiki.mozilla.org/Advocacy/heartbeat
user_pref("browser.selfsupport.url",		"");

// Disable firefox hello
// https://wiki.mozilla.org/Loop
//user_pref("loop.enabled",		false);

// CIS 2.1.1 Enable Auto Update
// This is disabled for now. it is better to patch through package management.
user_pref("app.update.auto", true);

// CIS 2.3.4 Block Reported Web Forgeries
// http://kb.mozillazine.org/Browser.safebrowsing.enabled
// http://kb.mozillazine.org/Safe_browsing
// https://support.mozilla.org/en-US/kb/how-does-phishing-and-malware-protection-work
// http://forums.mozillazine.org/viewtopic.php?f=39&t=2711237&p=12896849#p12896849
user_pref("browser.safebrowsing.enabled",		false);

// CIS 2.3.5 Block Reported Attack Sites
// http://kb.mozillazine.org/Browser.safebrowsing.malware.enabled
user_pref("browser.safebrowsing.malware.enabled",		false);

// Disable safe browsing for downloaded files. this leaks information to google.
// https://www.mozilla.org/en-US/firefox/39.0/releasenotes/
user_pref("browser.safebrowsing.downloads.enabled",		false);

/******************************************************************************
 * automatic connections																											*
 *																																						*
 ******************************************************************************/

// Disable link prefetching
// http://kb.mozillazine.org/Network.prefetch-next
// https://developer.mozilla.org/en-US/docs/Web/HTTP/Link_prefetching_FAQ#Is_there_a_preference_to_disable_link_prefetching.3F
//user_pref("network.prefetch-next",		false);

// https://support.mozilla.org/en-US/kb/how-stop-firefox-making-automatic-connections#w_geolocation-for-default-search-engine
user_pref("browser.search.geoip.url",		"");

// http://kb.mozillazine.org/Network.dns.disablePrefetch
// https://developer.mozilla.org/en-US/docs/Web/HTTP/Controlling_DNS_prefetching
//user_pref("network.dns.disablePrefetch",		true);

// https://wiki.mozilla.org/Privacy/Reviews/Necko
//user_pref("network.predictor.enabled",		false);

// http://kb.mozillazine.org/Browser.search.suggest.enabled
user_pref("browser.search.suggest.enabled",		false);

// Disable SSDP
// https://bugzil.la/1111967
user_pref("browser.casting.enabled",		false);

// https://support.mozilla.org/en-US/kb/how-stop-firefox-making-automatic-connections#w_media-capabilities
// http://andreasgal.com/2014/10/14/openh264-now-in-firefox/
user_pref("media.gmp-manager.url",		"");

// https://support.mozilla.org/en-US/kb/how-stop-firefox-making-automatic-connections#w_speculative-pre-connections
user_pref("network.http.speculative-parallel-limit",		0); //TODO: change this

// https://support.mozilla.org/en-US/kb/how-stop-firefox-making-automatic-connections#w_mozilla-content
user_pref("browser.aboutHomeSnippets.updateUrl",		"");

// https://support.mozilla.org/en-US/kb/how-stop-firefox-making-automatic-connections#w_auto-update-checking
user_pref("browser.search.update",		false);

/******************************************************************************
 * HTTP																																			 *
 *																																						*
 ******************************************************************************/

// https://bugzilla.mozilla.org/show_bug.cgi?id=855326
user_pref("security.csp.experimentalEnabled",		true);

// CSP https://developer.mozilla.org/en-US/docs/Web/Security/CSP/Introducing_Content_Security_Policy
user_pref("security.csp.enable",		true);

// http://kb.mozillazine.org/Network.http.sendRefererHeader#0
// https://bugzilla.mozilla.org/show_bug.cgi?id=822869
// Send a referer header with the target URI as the source
//user_pref("network.http.sendRefererHeader",		1);
//user_pref("network.http.referer.spoofSource",		true);
// CIS Version 1.2.0 October 21st, 2011 2.4.3 Disable Referer from an SSL Website
//user_pref("network.http.sendSecureXSiteReferrer",		false);

// CIS 2.5.1 Accept Only 1st Party Cookies
// http://kb.mozillazine.org/Network.cookie.cookieBehavior#1
user_pref("network.cookie.cookieBehavior",		1);

/******************************************************************************
 * Caching																																		*
 *																																						*
 ******************************************************************************/

// http://kb.mozillazine.org/Browser.cache.offline.enable
user_pref("browser.cache.offline.enable",		false);

// Always use private browsing
// https://support.mozilla.org/en-US/kb/Private-Browsing
// https://wiki.mozilla.org/PrivateBrowsing
user_pref("browser.privatebrowsing.autostart",		false);

// Clear history when Firefox closes
// https://support.mozilla.org/en-US/kb/Clear%20Recent%20History#w_how-do-i-make-firefox-clear-my-history-automatically
user_pref("privacy.sanitize.sanitizeOnShutdown",		false);
user_pref("privacy.clearOnShutdown.cache",		true);
user_pref("privacy.clearOnShutdown.cookies",		false);
user_pref("privacy.clearOnShutdown.downloads",		true);
user_pref("privacy.clearOnShutdown.formdata",		true);
user_pref("privacy.clearOnShutdown.history",		true);
user_pref("privacy.clearOnShutdown.offlineApps",		true);
user_pref("privacy.clearOnShutdown.passwords",		false);
user_pref("privacy.clearOnShutdown.sessions",		false);
user_pref("privacy.clearOnShutdown.siteSettings",		false);

// don't remember browsing history
user_pref("places.history.enabled",		false);

// The cookie expires at the end of the session (when the browser closes).
// http://kb.mozillazine.org/Network.cookie.lifetimePolicy#2
user_pref("network.cookie.lifetimePolicy",		0); //2

// http://kb.mozillazine.org/Browser.cache.disk.enable
user_pref("browser.cache.disk.enable",		false);

// http://kb.mozillazine.org/Browser.cache.memory.enable
//user_pref("browser.cache.memory.enable",		false);

// CIS Version 1.2.0 October 21st, 2011 2.5.8 Disable Caching of SSL Pages
// http://kb.mozillazine.org/Browser.cache.disk_cache_ssl
user_pref("browser.cache.disk_cache_ssl",		false);

// CIS Version 1.2.0 October 21st, 2011 2.5.2 Disallow Credential Storage
user_pref("signon.rememberSignons",		false);

// CIS Version 1.2.0 October 21st, 2011 2.5.6 Delete Search and Form History
user_pref("browser.formfill.enable",		false);
user_pref("browser.formfill.expire_days",		0);

// CIS Version 1.2.0 October 21st, 2011 2.5.7 Clear SSL Form Session Data
// http://kb.mozillazine.org/Browser.sessionstore.privacy_level#2
// Store extra session data for unencrypted (non-HTTPS) sites only.
// NOTE: CIS says 1, we use 2
user_pref("browser.sessionstore.privacy_level",		2);

// https://bugzil.la/238789#c19
user_pref("browser.helperApps.deleteTempFileOnExit",		true);

/******************************************************************************
 * UI related																																 *
 *																																						*
 ******************************************************************************/

// Webpages will not be able to affect the right-click menu
//user_pref("dom.event.contextmenu.enabled",		false);

// CIS 2.3.2 Disable Downloading on Desktop
user_pref("browser.download.folderList",		2);

// always ask the user where to download
// https://developer.mozilla.org/en/Download_Manager_preferences
user_pref("browser.download.useDownloadDir",		false);

// https://wiki.mozilla.org/Privacy/Reviews/New_Tab
user_pref("browser.newtabpage.enabled",		false);

// CIS Version 1.2.0 October 21st, 2011 2.2.3 Enable Warning of Using Weak Encryption
user_pref("security.warn_entering_weak",		true);

// CIS Mozilla Firefox 24 ESR v1.0.0 - 3.6 Enable IDN Show Punycode
// http://kb.mozillazine.org/Network.IDN_show_punycode
user_pref("network.IDN_show_punycode",		true);

// http://kb.mozillazine.org/About:config_entries#Browser
// http://kb.mozillazine.org/Inline_autocomplete
user_pref("browser.urlbar.autoFill",		true);
user_pref("browser.urlbar.autoFill.typed",		true);

// http://www.labnol.org/software/browsers/prevent-firefox-showing-bookmarks-address-location-bar/3636/
// http://kb.mozillazine.org/Browser.urlbar.maxRichResults
// "Setting the preference to 0 effectively disables the Location Bar dropdown entirely."
user_pref("browser.urlbar.maxRichResults",		14);

// https://blog.mozilla.org/security/2010/03/31/plugging-the-css-history-leak/
// http://dbaron.org/mozilla/visited-privacy
user_pref("layout.css.visited_links_enabled",		false);

// http://kb.mozillazine.org/Places.frecency.unvisited%28place_type%29Bonus

// http://kb.mozillazine.org/Disabling_autocomplete_-_Firefox#Firefox_3.5
user_pref("browser.urlbar.autocomplete.enabled",		true);

// http://kb.mozillazine.org/Signon.autofillForms
// https://www.torproject.org/projects/torbrowser/design/#identifier-linkability
user_pref("signon.autofillForms",		false);

// do not check if firefox is the default browser
user_pref("browser.shell.checkDefaultBrowser",		false);

/******************************************************************************
 * TLS / HTTPS / OCSP related stuff																					 *
 *																																						*
 ******************************************************************************/

// pinning
// https://wiki.mozilla.org/SecurityEngineering/Public_Key_Pinning#How_to_use_pinning
// "2. Strict. Pinning is always enforced."
user_pref("security.cert_pinning.enforcement_level",		2);

// https://wiki.mozilla.org/Security:Renegotiation#security.ssl.treat_unsafe_negotiation_as_broken
// see also CVE-2009-3555
user_pref("security.ssl.treat_unsafe_negotiation_as_broken",		true);

// https://support.mozilla.org/en-US/kb/certificate-pinning-reports
//
// we could also disable security.ssl.errorReporting.enabled, but I think it's
// good to leave the option to report potentially malicious sites if the user
// chooses to do so.
//
// you can test this at https://pinningtest.appspot.com/
user_pref("security.ssl.errorReporting.automatic",		false);

//tabmix prefs
user_pref("extensions.tabmix.appearance_tab",		1);
user_pref("extensions.tabmix.enablefiletype",		false);
user_pref("extensions.tabmix.openNewTabNext",		true);
user_pref("extensions.tabmix.openTabNext",		true);
user_pref("extensions.tabmix.openTabNextInverse",		false);
user_pref("extensions.tabmix.opentabfor.bookmarks",		true);
user_pref("extensions.tabmix.sessions.crashRecovery",		false);
user_pref("extensions.tabmix.sessions.crashed",		true);
user_pref("extensions.tabmix.sessions.manager",		false);
user_pref("extensions.tabmix.styles.unloadedTab",		"{\"italic\":false,\"bold\":false,\"underline\":false,\"text\":true,\"textColor\":\"rgba(204,0,0,1)\",\"bg\":true,\"bgColor\":\"rgba(236,233,216,1)\",\"bgTopColor\":\"rgba(236,233,216,1)\"}");
user_pref("extensions.tabmix.syncPrefs",		true);
user_pref("extensions.tabmix.unreadTab",		false);

//classicthemerestorer prefs
user_pref("extensions.classicthemerestorer.anewtaburl",		"about:blank");
user_pref("extensions.classicthemerestorer.anewtaburlcb",		true);
user_pref("extensions.classicthemerestorer.appbutton",		"appbutton_off");
user_pref("extensions.classicthemerestorer.bmanimation",		false);
user_pref("extensions.classicthemerestorer.closetab",		"closetab_forced");
user_pref("extensions.classicthemerestorer.combrelstop",		true);
user_pref("extensions.classicthemerestorer.ctrreset",		false);
user_pref("extensions.classicthemerestorer.extraurlkeycb",		true);
user_pref("extensions.classicthemerestorer.fsaduration",		false);
user_pref("extensions.classicthemerestorer.hightabpososx",		true);
user_pref("extensions.classicthemerestorer.noconicons",		true);
user_pref("extensions.classicthemerestorer.pananimation",		false);
user_pref("extensions.classicthemerestorer.pref_actindx",		2);
user_pref("extensions.classicthemerestorer.pref_actindx2",		4);
user_pref("extensions.classicthemerestorer.tabfbold_unr",		true);
user_pref("extensions.classicthemerestorer.tabs",		"tabs_default");
user_pref("extensions.classicthemerestorer.tabtextc_pen",		false);
user_pref("extensions.classicthemerestorer.tabtextc_unr",		false);
user_pref("extensions.classicthemerestorer.tabtextsh_pen",		false);
user_pref("extensions.classicthemerestorer.tabtextsh_unr",		false);
user_pref("extensions.classicthemerestorer.urlbardropm",		true);

// Отключает обязательную проверку наличия подписи у аддона, без которой он не даст установить его.
user_pref("xpinstall.signatures.required",		false);
// Отключает автоматическую отправку поисковику недопечатанного запроса по мере его набора,
// используемую для формирования поисковых подсказок.
user_pref("browser.urlbar.suggest.searches",		false);

user_pref("browser.sessionstore.max_tabs_undo",		25);
user_pref("browser.sessionstore.max_windows_undo",		15);
user_pref("browser.rights.3.shown",		true);
user_pref("startup.homepage_welcome_url",		"");
user_pref("startup.homepage_override_url",		"");
user_pref("browser.feeds.showFirstRunUI",		false);

user_pref("browser.startup.page",		3);
user_pref("browser.fullscreen.animate",		false);
user_pref("devtools.command-button-eyedropper.enabled",		true);
user_pref("browser.cache.use_new_backend",		1);
user_pref("browser.pagethumbnails.capturing_disabled",		true);
user_pref("extensions.openwith.manual.sEIyCa3m",		"\"/usr/local/bin/zsh\" -c \"mpv '%s'; zsh -i\"");
user_pref("extensions.openwith.manual.sEIyCa3m.name",		"mpv");
user_pref("extensions.openwith.order",		"[\"a/google_chrome\",\"a/safari\",\"a/seamonkey\",\"m/sEIyCa3m\"]");

// Использовать HTTP/1.1 для передачи нескольких файлов, не реконнектясь после каждого.
user_pref("network.http.pipelining",		true);
user_pref("network.http.proxy.pipelining",		true);
user_pref("network.http.pipelining.ssl",		true);


// Более информативная страница показа ошибок в сертификатах сайтов.
user_pref("browser.xul.error_pages.expert_bad_cert",		true);

// Также немного уменьшает потребление памяти.
// https://bugzilla.mozilla.org/show_bug.cgi?id=805855
// https://bugzilla.mozilla.org/show_bug.cgi?id=850607
user_pref("memory.free_dirty_pages",		true);

// Отключает переход назад в истории по бэкспейсу.
// http://kb.mozillazine.org/Browser.backspace_action
user_pref("browser.backspace_action",		2);

// Запрещает сайтам установку соединений на критически важные порты, занятые I2P и Tor.
user_pref("network.security.ports.banned",		"4444,9050,9051");

// Отключает Google Safebrowsing. Раньше можно было еще не отключать, пока они только отдавали базу
// хэшей малварных URL и браузер сверялся с локальной копией. Но сейчас Гугл заставляет посылать хэш
// каждого загружаемого пользователем файла (якобы для проверки на вирусы), что уже совершенно
// неприемлемо. Желающие могут установить себе подписку Malware Domains для uBlock Origin, которая
// включает в себя URL из Safebrowsing и не следит за пользователем.
// Обращения к Safebrowsing могли создать специальную куку PREF для домена google.com, которая
// _не удаляется_ через менеджер кук браузера из-за бага и содержит идентификатор пользователя.
// Поэтому, если Safebrowsing ранее был включен в этом профиле, после его отключения необходимо
// вручную удалить cookies.sqlite из профиля, или подчистить эту БД каким-либо SQLite-редактором.
// https://bugzilla.mozilla.org/show_bug.cgi?id=1008706
// https://bugzilla.mozilla.org/show_bug.cgi?id=1026538
// https://bugzilla.mozilla.org/show_bug.cgi?id=1186772
// https://blog.mozilla.org/security/2014/07/23/improving-malware-detection-in-firefox/
// https://support.mozilla.org/en-US/kb/how-stop-firefox-making-automatic-connections#w_anti-phishing-list-updating
user_pref("browser.safebrowsing.enabled",		false);
// https://support.mozilla.org/en-US/kb/how-stop-firefox-making-automatic-connections#w_anti-malware-list-updating
user_pref("browser.safebrowsing.malware.enabled",		false);
user_pref("browser.safebrowsing.downloads.enabled",		false);
user_pref("browser.safebrowsing.downloads.remote.enabled",		false);
// https://support.mozilla.org/en-US/kb/how-stop-firefox-making-automatic-connections#w_anti-malware-list-updating
user_pref("browser.safebrowsing.appRepURL",		"");
user_pref("browser.safebrowsing.gethashURL",		"");
user_pref("browser.safebrowsing.malware.reportURL",		"");
user_pref("browser.safebrowsing.reportErrorURL",		"");
user_pref("browser.safebrowsing.reportGenericURL",		"");
user_pref("browser.safebrowsing.reportMalwareErrorURL",		"");
user_pref("browser.safebrowsing.reportMalwareURL",		"");
user_pref("browser.safebrowsing.reportPhishURL",		"");
user_pref("browser.safebrowsing.reportURL",		"");
user_pref("browser.safebrowsing.updateURL",		"");
user_pref("browser.safebrowsing.reportPhishMistakeURL",		"");
user_pref("browser.safebrowsing.reportPhishURL",		"");
user_pref("browser.safebrowsing.reportMalwareMistakeURL",		"");

// Отключает мозилловский анти-трекинговый список, который дублирует функции uBlock с соответствующими
// подписками и является менее эффективным (т.к. основан на списке от Disconnect).
// https://support.mozilla.org/en-US/kb/tracking-protection-firefox
// https://wiki.mozilla.org/Polaris
user_pref("privacy.trackingprotection.enabled",		false);
user_pref("privacy.trackingprotection.pbmode.enabled",		false);
user_pref("browser.trackingprotection.updateURL",		"");
user_pref("browser.trackingprotection.gethashURL",		"");
user_pref("browser.polaris.enabled",		false);

// Вообще не регистрировать таблицы Safebrowsing и Tracking Protection в URL Classifier, пусть даже
// в отключенном виде и с пустыми URL для обновления.
// https://hg.mozilla.org/releases/mozilla-release/file/6f3151d4ff03/toolkit/components/url-classifier/SafeBrowsing.jsm
// https://hg.mozilla.org/releases/mozilla-release/file/326bab27cc3c/toolkit/components/url-classifier/nsIUrlListManager.idl#l29
// https://hg.mozilla.org/releases/mozilla-release/file/76c0924aea88/toolkit/components/url-classifier/content/listmanager.js#l88
user_pref("urlclassifier.malwareTable",		"");
user_pref("urlclassifier.phishTable",		"");
user_pref("urlclassifier.downloadBlockTable",		"");
user_pref("urlclassifier.downloadAllowTable",		"");
user_pref("urlclassifier.trackingTable",		"");
user_pref("urlclassifier.disallow_completions",		"");

// Отключает добавление в New Tab Page Tiles сайтов спонсоров Mozilla и сбор статистики кликов по ним.
// После отключения следует удалить directoryLinks.json в about:cache -> <директория на уровень выше cache2>,
// чтобы уже загруженная реклама не показывалась -- https://support.mozilla.org/en-US/questions/1030849
// https://wiki.mozilla.org/Tiles
// https://gecko.readthedocs.org/en/latest/browser/browser/DirectoryLinksProvider.html
// https://support.mozilla.org/en-US/kb/how-stop-firefox-making-automatic-connections#w_tiles
user_pref("browser.newtabpage.directory.ping",		"");
// Firefox не проверяет эту опцию на пустую строку и XHR начинает ругаться в консоль, если она пустая.
user_pref("browser.newtabpage.directory.source",		"data:application/json,{}");
user_pref("browser.newtabpage.enhanced",		false);
// Отключает предупреждение о вышеописанной рекламе при первом открытии New Tab Page.
user_pref("browser.newtabpage.introShown",		true);
// Отключает загрузку рекламы сервисов от самой Mozilla (Sync, Hello, версий для Android) в about:home.
// https://wiki.mozilla.org/Websites/Snippets
// https://support.mozilla.org/en-US/kb/how-stop-firefox-making-automatic-connections#w_snippets
user_pref("browser.aboutHomeSnippets.updateUrl",		"");

// Отключает проверку при запуске, является ли Firefox браузером по умолчанию.
// Preferences -> General -> Startup -> Always check if Firefox is your default browser
user_pref("browser.shell.checkDefaultBrowser",		false);
// Отключает автоматическое открытие вкладки с описанием изменений в новой версии после обновления.
// http://kb.mozillazine.org/Browser.startup.homepage_override.mstone
// https://hg.mozilla.org/releases/mozilla-esr38/file/29eac8276b62/browser/components/nsBrowserContentHandler.js#l565
// https://hg.mozilla.org/releases/mozilla-esr38/file/29eac8276b62/browser/components/nsBrowserContentHandler.js#l102
// https://support.mozilla.org/en-US/kb/how-stop-firefox-making-automatic-connections#w_whats-new-page
user_pref("browser.startup.homepage_override.mstone",		"ignore");
user_pref("startup.homepage_override_url",		"");
// Отключает приветственную страницу при первом запуске браузера с новым профилем.
user_pref("startup.homepage_welcome_url",		"");
// Отключает замеры времени запуска браузера и уведомление о слишком долгом по его мнению старте.
// https://hg.mozilla.org/releases/mozilla-esr38/file/f9441895096d/browser/components/nsBrowserGlue.js#l687
user_pref("browser.slowStartup.notificationDisabled",		true);

// Отключает посылку статистики при обновлении аддонов.
// https://wiki.mozilla.org/Extension_Manager:Update_Checking
// https://bugzilla.mozilla.org/show_bug.cgi?id=635115
// https://support.mozilla.org/en-US/kb/how-stop-firefox-making-automatic-connections#w_add-on-metadata-updating
user_pref("extensions.getAddons.cache.enabled",		false);

// Отключает телеметрию.
// https://support.mozilla.org/en-US/kb/firefox-health-report-understand-your-browser-perf
// https://support.mozilla.org/en-US/kb/how-stop-firefox-making-automatic-connections#w_diagnostics
user_pref("datareporting.healthreport.service.enabled",		false);
user_pref("datareporting.healthreport.uploadEnabled",		false);
user_pref("datareporting.policy.dataSubmissionEnabled",		false);
user_pref("datareporting.healthreport.about.reportUrl",		"");
user_pref("datareporting.healthreport.about.reportUrlUnified",		"");
user_pref("datareporting.healthreport.documentServerURI",		"");
// https://www.mozilla.org/en-US/privacy/firefox/#telemetry
// https://wiki.mozilla.org/Privacy/Reviews/Telemetry
// https://wiki.mozilla.org/Security/Reviews/Firefox6/ReviewNotes/telemetry
// https://wiki.mozilla.org/Telemetry/Testing#Browser_Prefs
// https://gecko.readthedocs.org/en/latest/toolkit/components/telemetry/telemetry/preferences.html
user_pref("toolkit.telemetry.enabled",		false);
user_pref("toolkit.telemetry.server",		"");
user_pref("toolkit.telemetry.archive.enabled",		false);
// https://wiki.mozilla.org/Unified_Telemetry
user_pref("toolkit.telemetry.unified",		false);
// Это должно быть true.
// https://hg.mozilla.org/releases/mozilla-beta/file/0f8e1375f717/toolkit/components/telemetry/TelemetryController.jsm#l669
user_pref("toolkit.telemetry.unifiedIsOptIn",		true);
// https://hg.mozilla.org/releases/mozilla-beta/file/0f8e1375f717/browser/app/profile/firefox.js#l1904
// https://hg.mozilla.org/releases/mozilla-beta/file/0f8e1375f717/toolkit/components/telemetry/TelemetryController.jsm#l628
user_pref("toolkit.telemetry.optoutSample",		false);
// Отключает отправку информации о падениях браузера в Mozilla (about:crashes).
user_pref("breakpad.reportURL",		"");
user_pref("dom.ipc.plugins.flash.subprocess.crashreporter.enabled",		false);
user_pref("dom.ipc.plugins.reportCrashURL",		false);

// Отключает установку дефолтных пермишнов (resource://app/defaults/permissions) в Permission Manager.
// Среди которых есть пермишн install для AMO, из-за чего браузер в AMO -> Themes (со включенным JS)
// скачивает и применяет темы по mouseover, без подтверждения установки.
// Еще в том списке есть пермишн remote-troubleshooting, позволяющий скриптам на сайтах, которым он задан
// (support.mozilla.org и input.mozilla.org), читать часть информации, перечисленной в about:support,
// когда пользователь заходит на эти сайты (со включенным JS). Причем пермишны remote-troubleshooting,
// в отличие от install, не видны через UI браузера (Page Info -> Permissions). Протестировать этот
// механизм и узнать, какая именно информация доступна, можно здесь[1], задав hg.mozilla.org пермишн
// remote-troubleshooting путем присвоения этой настройке строки[2] (без кавычек) и перезапуска браузера.
// Отключение установки пермишнов из дефолтного списка решает обе вышеописанные проблемы.
// [1]: https://hg.mozilla.org/releases/mozilla-esr38/raw-file/569b611715e0/browser/base/content/test/general/test_remoteTroubleshoot.html
// [2]: "data:text/plain,host%09remote-troubleshooting%091%09hg.mozilla.org"
// https://bugzilla.mozilla.org/show_bug.cgi?id=1079563
// https://bugzilla.mozilla.org/show_bug.cgi?id=1091944
// https://bugzilla.mozilla.org/show_bug.cgi?id=1091942
// https://hg.mozilla.org/releases/mozilla-esr38/file/f402bfa9a35e/browser/base/content/test/general/browser_remoteTroubleshoot.js
// https://hg.mozilla.org/releases/mozilla-esr38/file/f9441895096d/browser/components/nsBrowserGlue.js#l833
// https://hg.mozilla.org/releases/mozilla-esr38/file/56d740d0769f/toolkit/modules/WebChannel.jsm#l139
// https://hg.mozilla.org/releases/mozilla-esr38/file/a20c7910a82f/extensions/cookie/nsPermissionManager.cpp#l1888
user_pref("permissions.manager.defaultsUrl",		"");

// Отключает интегрированную поддержку проприетарного сервиса закладок Pocket.
// http://www.opennet.ru/opennews/art.shtml?num=42245
// https://wiki.mozilla.org/QA/Pocket_integration
user_pref("browser.pocket.enabled",		false);
user_pref("browser.pocket.api",		"");
user_pref("browser.pocket.site",		"");
user_pref("browser.pocket.oAuthConsumerKey",		"");
user_pref("browser.pocket.enabledLocales",		"");

// Отключает эксперименты - фоновые тесты различных отключенных пока по умолчанию функций (вроде
// HTTP Pipelining) со сбором телеметрии.
// https://hg.mozilla.org/releases/mozilla-esr38/file/008aa6494f90/netwerk/protocol/http/nsHttpHandler.cpp#l1406
user_pref("network.allow-experiments",		false);
// https://hg.mozilla.org/releases/mozilla-esr38/file/91100de4f2ad/toolkit/mozapps/extensions/internal/XPIProvider.jsm#l7742
user_pref("experiments.supported",		false);
// https://hg.mozilla.org/releases/mozilla-esr38/file/8bc9656cad94/browser/experiments/ExperimentsService.js
// https://hg.mozilla.org/releases/mozilla-esr38/file/8bc9656cad94/browser/experiments/Experiments.jsm
user_pref("experiments.enabled",		false);
user_pref("experiments.activeExperiment",		false);
user_pref("experiments.manifest.uri",		"");

// Отключает автоматическое скачивание и установку ADB Helper и аддона для удаленной отладки мобильных
// браузеров при первом запуске WebIDE. Ручная установка через меню WebIDE все еще будет работать.
// https://developer.mozilla.org/en-US/docs/Tools/Valence
user_pref("devtools.webide.autoinstallADBHelper",		false);
user_pref("devtools.webide.autoinstallFxdtAdapters",		false);
// Отключает авто-подсоединение к предыдущему отлаживаемому устройству/эмулятору при запуске WebIDE.
user_pref("devtools.webide.autoConnectRuntime",		false);

// Отключает возможность соединения с устройством на Firefox OS для отладки по Wi-Fi.
// https://wiki.mozilla.org/DevTools/WiFi_Debugging
user_pref("devtools.remote.wifi.scan",		false);
user_pref("devtools.remote.wifi.visible",		false);

// Полностью отключает WebIDE, убирает его кнопку и из меню Developer Tools.
// https://trac.torproject.org/projects/tor/ticket/16222#comment:10
user_pref("devtools.webide.enabled",		false);
user_pref("devtools.appmanager.enabled",		false);
user_pref("devtools.webide.enableLocalRuntime",		false);
// https://bugzilla.mozilla.org/show_bug.cgi?id=1056923
user_pref("devtools.webide.widget.autoinstall",		false);
user_pref("devtools.webide.widget.enabled",		false);
user_pref("devtools.webide.widget.inNavbarByDefault",		false);
user_pref("devtools.webide.adaptersAddonURL",		"");
user_pref("devtools.webide.adbAddonURL",		"");
user_pref("devtools.webide.addonsURL",		"");
user_pref("devtools.webide.addonsURL_cache",		"");
user_pref("devtools.webide.simulatorAddonsURL",		"");
user_pref("devtools.webide.templatesURL",		"");
user_pref("devtools.webide.templatesURL_cache",		"");
