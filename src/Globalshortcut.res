/// Register global shortcuts.
///
/// This package is also accessible with window.__TAURI__.globalShortcut when build.withGlobalTauri in tauri.conf.json is set to true.
///
/// The APIs must be added to tauri.allowlist.globalShortcut in tauri.conf.json:
///
/// {
///   "tauri": {
///     "allowlist": {
///       "globalShortcut": {
///         "all": true // enable all global shortcut APIs
///       }
///     }
///   }
/// }
///
/// It is recommended to allowlist only the APIs you use for optimal bundle size and security.

type shortcut_handler = string => unit

/// Determines whether the given shortcut is registered by this application or not.
/// Since: 1.0.0
/// Return: Promise.t<bool>
@module("@tauri-apps/api/globalShortcut")
external isRegistered: string => Promise.t<bool> = "isRegistered"

/// Register a global shortcut.
/// Since: 1.0.0
/// Return: Promise.t<unit>
@module("@tauri-apps/api/globalShortcut")
external register: string => shortcut_handler => Promise.t<unit> = "register"


/// Register a collection of global shortcuts.
/// Since: 1.0.0
/// Return: Promise.t<unit>
@module("@tauri-apps/api/globalShortcut")
external registerAll: array<string> => shortcut_handler => Promise.t<unit> = "registerAll"


/// Unregister a global shortcut.
/// Since: 1.0.0
/// Return: Promise.t<unit>
@module("@tauri-apps/api/globalShortcut")
external unregister: string => Promise.t<unit> = "unregister"


/// Unregisters all shortcuts registered by the application.
/// Since: 1.0.0
/// Return: Promise.t<unit>
@module("@tauri-apps/api/globalShortcut")
external unregisterAll: array<string> => Promise.t<unit> = "unregisterAll"