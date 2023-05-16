@module("@tauri-apps/api/tauri")
external invoke: (~cmd: string, ~payload: 'a=?) => promise<'b> = "invoke"