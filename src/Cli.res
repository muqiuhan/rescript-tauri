/// Parse arguments from your Command Line Interface.
/// This package is also accessible with window.__TAURI__.cli when build.withGlobalTauri in tauri.conf.json is set to true.

type rec arg_match = {
  value: option<value>,
  occurrences: number,
}

and value =
  | String(string)
  | Boolean(bool)
  | StringList(list<string>)

and number = float

type rec cli_matches = {
  args: (string, arg_match),
  subcommand: option<subcommand_match>,
}

and subcommand_match = {
  matches: cli_matches,
  name: string,
}

@module("@tauri-apps/api/cli")
external getMatches: unit => Promise.t<cli_matches> = "getMatches"