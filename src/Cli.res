/// Parse arguments from your Command Line Interface.
/// This package is also accessible with window.__TAURI__.cli when build.withGlobalTauri in tauri.conf.json is set to true.


@module("@tauri-apps/api/cli")
external getMatches: unit => Promise.t<'a> = "getMatches"