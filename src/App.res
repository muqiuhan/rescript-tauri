/// Get application metadata.
///
/// This package is also accessible with window.__TAURI__.app when build.withGlobalTauri in tauri.conf.json is set to true.
///
/// The APIs must be added to tauri.allowlist.app in tauri.conf.json:
///
/// {
///   "tauri": {
///     "allowlist": {
///       "app": {
///         "all": true, // enable all app APIs
///         "show": true,
///         "hide": true
///       }
///     }
///   }
/// }
///
/// It is recommended to allowlist only the APIs you use for optimal bundle size and security.

/// Gets the application name.
@module("@tauri-apps/api/app")
external getName: unit => Promise.t<string> = "getName"

/// Gets the Tauri version.
@module("@tauri-apps/api/app")
external getTauriVersion: unit => Promise.t<string> = "getTauriVersion"
