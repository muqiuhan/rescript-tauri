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
/// Since: 1.0.0
/// Returns: Promise.t<string>
@module("@tauri-apps/api/app")
external getName: unit => Promise.t<string> = "getName"

/// Gets the Tauri version.
/// Since: 1.0.0
/// Returns: Promise.t<string>
@module("@tauri-apps/api/app")
external getTauriVersion: unit => Promise.t<string> = "getTauriVersion"

/// Gets the application version.
/// Since: 1.0.0
/// Returns: Promise.t<string>
@module("@tauri-apps/api/app")
external getVersion: unit => Promise.t<string> = "getVersion"

/// Hides the application on macOS.
/// Since: 1.2.0
/// Returns: Promise.t<unit>
@module("@tauri-apps/api/app")
external hide: unit => Promise.t<unit> = "hide"

/// Shows the application on macOS. This function does not automatically focus any specific app window.
/// Since: 1.2.0
/// Returns: Promise.t<unit>
@module("@tauri-apps/api/app")
external show: unit => Promise.t<unit> = "show"