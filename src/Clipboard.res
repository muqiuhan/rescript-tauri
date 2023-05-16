/// Read and write to the system clipboard.
///
/// This package is also accessible with window.__TAURI__.clipboard when build.withGlobalTauri in tauri.conf.json is set to true.
///
/// The APIs must be added to tauri.allowlist.clipboard in tauri.conf.json:
///
/// {
///   "tauri": {
///     "allowlist": {
///       "clipboard": {
///         "all": true, // enable all Clipboard APIs
///         "writeText": true,
///         "readText": true
///       }
///     }
///   }
/// }
///
/// It is recommended to allowlist only the APIs you use for optimal bundle size and security.

/// Gets the clipboard content as plain text.
/// Since: 1.0.0.
/// Returns: Promise.t<option<string>>
@module("@tauri-apps/api/clipboard")
external readText: unit => Promise.t<option<string>> = "readText"

/// Writes plain text to the clipboard.
/// Since: 1.0.0.
/// Returns: Promise<unit>
@module("@tauri-apps/api/clipboard")
external writeText: string => Promise.t<unit> = "writeText"
