/// Perform operations on the current process.
///
/// This package is also accessible with window.__TAURI__.process when build.withGlobalTauri in tauri.conf.json is set to true.

module Tauri = {
  /// Exits immediately with the given exitCode.
  /// A promise indicating the success or failure of the operation.
  /// Since: 1.0.0
  /// Return: Returns: Promise.t<unit>
  @module("@tauri-apps/api/process")
  external exit: int => Promise.t<unit> = "exit"
}

/// Exits the current instance of the app then relaunches it.
/// A promise indicating the success or failure of the operation.
/// Since: 1.0.0
/// Returns: Promise.t<unit>
@module("@tauri-apps/api/process")
external relaunch: int => Promise.t<unit> = "relaunch"

/// Exits immediately with the given exitCode.
/// A promise indicating the success or failure of the operation.
/// Since: 1.0.0
/// Return: Returns: Promise.t<unit>
let exit = (~code: int=0, ()) => {
  Tauri.exit(code)
}
