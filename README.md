<div align="center">

<img src="./.github/logo.png" height="150px" width="150px">

# Rescript-Tauri

*The tauri/api bindings for rescript*

__WIP__

</div>

## Introduction

<a href="https://rescript-lang.org">

<img src="https://rescript-lang.org/static/nav-logo-full@2x.png" height="20px">

- Fast, Simple, Fully Typed JavaScript from the Future.

</a>

<a href="https://tauri.app">

<img src="https://tauri.app/meta/tauri_logo_dark.svg" height="20px">

- Build an optimized, secure, and frontend-independent application for multi-platform deployment.

</a>

## Test

1. For test this project, please install tauri first: [https://tauri.app/v1/guides/getting-started/setup](https://tauri.app/v1/guides/getting-started/setup)

2. Execute `pnpm install` (or npm, yarn)

3. `pnpm run test`

## Document

### App
> Get application metadata.
> 
> This package is also accessible with window.__TAURI__.app when build.withGlobalTauri in tauri.conf.json is set to true.
> 
> The APIs must be added to tauri.allowlist.app in tauri.conf.json:
> ```javascript
> {
>   "tauri": {
>     "allowlist": {
>       "app": {
>         "all": true, // enable all app APIs
>         "show": true,
>         "hide": true
>       }
>     }
>   }
> }
> ```
> It is recommended to allowlist only the APIs you use for optimal bundle size and security.

#### Functions

##### getName
Gets the application name.

```rescript
getName: unit => Promise.t<string>
```

##### getTauriVersion
Gets the Tauri version.

```rescript
getTauriVersion: unit => Promise.t<string>
```

##### getVersion
Gets the application version.

```rescript
getVersion: unit => Promise.t<string>
```


##### hide
Hides the application on macOS.

```rescript
hide: unit => Promise.t<unit>
```

##### show
Shows the application on macOS. This function does not automatically focus any specific app window.

```rescript
show(): Promise.t<unit>
```
### Cli
> Parse arguments from your Command Line Interface.
> 
> This package is also accessible with `window.__TAURI__.cli` when build.withGlobalTauri in tauri.conf.json is set to true.

### Clipboard
> Read and write to the system clipboard.
> 
> This package is also accessible with `window.__TAURI__.clipboard` when build.withGlobalTauri in tauri.conf.json is set to true.
> 
> The APIs must be added to tauri.allowlist.clipboard in tauri.conf.json:
> ```javascript
> {
>   "tauri": {
>     "allowlist": {
>       "clipboard": {
>         "all": true, // enable all Clipboard APIs
>         "writeText": true,
>         "readText": true
>       }
>     }
>   }
> }
> ```
> It is recommended to allowlist only the APIs you use for optimal bundle size and security.

#### Functions
##### readText
Gets the clipboard content as plain text.
```rescript
readText(): unit => Promise.t<option<string>>
```

##### writeText
Writes plain text to the clipboard.
```rescript
write(): string => Promise.t<unit>
```

### Dialog
> Native system dialogs for opening and saving files.
>
> This package is also accessible with `window.__TAURI__.dialog` when build.withGlobalTauri in tauri.conf.json is set to true.
> 
> The APIs must be added to tauri.allowlist.dialog in tauri.conf.json:
> ```javascript
> {
>   "tauri": {
>     "allowlist": {
>       "dialog": {
>         "all": true, // enable all dialog APIs
>         "ask": true, // enable dialog ask API
>         "confirm": true, // enable dialog confirm API
>         "message": true, // enable dialog message API
>         "open": true, // enable file open API
>         "save": true // enable file save API
>       }
>     }
>   }
> }
> ```
> It is recommended to allowlist only the APIs you use for optimal bundle size and security.

### Event
> The event system allows you to emit events to the backend and listen to events from it.
> 
> This package is also accessible with `window.__TAURI__.event` when build.withGlobalTauri in tauri.conf.json is set to true.

### Fs
> Access the file system.
> 
> This package is also accessible with `window.__TAURI__.fs` when build.withGlobalTauri in tauri.conf.json is set to true.
> 
> The APIs must be added to tauri.allowlist.fs in tauri.conf.json:
> ```javascript
> {
>   "tauri": {
>     "allowlist": {
>       "fs": {
>         "all": true, // enable all FS APIs
>         "readFile": true,
>         "writeFile": true,
>         "readDir": true,
>         "copyFile": true,
>         "createDir": true,
>         "removeDir": true,
>         "removeFile": true,
>         "renameFile": true,
>         "exists": true
>       }
>     }
>   }
> }
> ```
> It is recommended to allowlist only the APIs you use for optimal bundle size and security.

### GlobalShortcut
> Register global shortcuts.
> 
> This package is also accessible with `window.__TAURI__.globalShortcut` when build.withGlobalTauri in tauri.conf.json is set to true.
> 
> The APIs must be added to tauri.allowlist.globalShortcut in tauri.conf.json:
> ```javascript
> {
>   "tauri": {
>     "allowlist": {
>       "globalShortcut": {
>         "all": true // enable all global shortcut APIs
>       }
>     }
>   }
> }
> ```
> It is recommended to allowlist only the APIs you use for optimal bundle size and security.

### Http
> Access the HTTP client written in Rust.
> 
> This package is also accessible with `window.__TAURI__.http` when build.withGlobalTauri in tauri.conf.json is set to true.
> 
> The APIs must be allowlisted on tauri.conf.json:
>
> ```javascript
> {
>   "tauri": {
>     "allowlist": {
>       "http": {
>         "all": true, // enable all http APIs
>         "request": true // enable HTTP request API
>       }
>     }
>   }
> }
> ```
> It is recommended to allowlist only the APIs you use for optimal bundle size and security.
> Security
> 
> This API has a scope configuration that forces you to restrict the URLs and paths that can be accessed using glob patterns.
> 
> For instance, this scope configuration only allows making HTTP requests to the GitHub API for the tauri-apps organization:
>
> ```javascript
> {
>   "tauri": {
>     "allowlist": {
>       "http": {
>         "scope": ["https://api.github.com/repos/tauri-apps/*"]
>       }
>     }
>   }
> }
> ```
> Trying to execute any API with a URL not configured on the scope results in a promise rejection due to denied access.


### Mocks

### Notification
> Send toast notifications (brief auto-expiring OS window element) to your user. Can also be used with the Notification Web API.
> 
> This package is also accessible with `window.__TAURI__.notification` when build.withGlobalTauri in tauri.conf.json is set to true.
> 
> The APIs must be added to tauri.allowlist.notification in tauri.conf.json:
>
> ```javascript
> {
>   "tauri": {
>     "allowlist": {
>       "notification": {
>         "all": true // enable all notification APIs
>       }
>     }
>   }
> }
> ```
> It is recommended to allowlist only the APIs you use for optimal bundle size and security.

### Os
> Provides operating system-related utility methods and properties.
> 
> This package is also accessible with `window.__TAURI__.os` when build.withGlobalTauri in tauri.conf.json is set to true.
> 
> The APIs must be added to tauri.allowlist.os in tauri.conf.json:
> ```javascript
> {
>   "tauri": {
>     "allowlist": {
>       "os": {
>         "all": true, // enable all Os APIs
>       }
>     }
>   }
> }
> ```
> It is recommended to allowlist only the APIs you use for optimal bundle size and security.

### Path
> The path module provides utilities for working with file and directory paths.
> 
> This package is also accessible with `window.__TAURI__.path` when build.withGlobalTauri in tauri.conf.json is set to true.
> 
> The APIs must be added to tauri.allowlist.path in tauri.conf.json:
>
> ```javascript
> {
>   "tauri": {
>     "allowlist": {
>       "path": {
>         "all": true, // enable all Path APIs
>       }
>     }
>   }
> }
> ```
> It is recommended to allowlist only the APIs you use for optimal bundle size and security.

### Process
> Perform operations on the current process.
> 
> This package is also accessible with `window.__TAURI__.process` when build.withGlobalTauri in tauri.conf.json is set to true.

### Shell
> Access the system shell. Allows you to spawn child processes and manage files and URLs using their default application.
> 
> This package is also accessible with `window.__TAURI__.shell` when build.withGlobalTauri in tauri.conf.json is set to true.
> 
> The APIs must be added to tauri.allowlist.shell in tauri.conf.json:
>
> ```javascript
> {
>   "tauri": {
>     "allowlist": {
>       "shell": {
>         "all": true, // enable all shell APIs
>         "execute": true, // enable process spawn APIs
>         "sidecar": true, // enable spawning sidecars
>         "open": true // enable opening files/URLs using the default program
>       }
>     }
>   }
> }
> ```
> It is recommended to allowlist only the APIs you use for optimal bundle size and security.
> #### Security
> 
> This API has a scope configuration that forces you to restrict the programs and arguments that can be used.
> Restricting access to the open API
> 
> On the allowlist, open: true means that the open API can be used with any URL, as the argument is validated with the `^((mailto:\w+)|(tel:\w+)|(https?://\w+)).+ regex`. You can change that regex by changing the boolean value to a string, e.g. open: https://github.com/.
> Restricting access to the Command APIs
> 
> The shell allowlist object has a scope field that defines an array of CLIs that can be used. Each CLI is a configuration object `{ name: string, cmd: string, sidecar?: bool, args?: boolean | Arg[] }`.
> 
> - name: the unique identifier of the command, passed to the Command constructor. If it's a sidecar, this must be the value defined on tauri.conf.json > tauri > bundle > externalBin.
> - cmd: the program that is executed on this configuration. If it's a sidecar, this value is ignored.
> - sidecar: whether the object configures a sidecar or a system program.
> - args: the arguments that can be passed to the program. By default no arguments are allowed.
>   - true means that any argument list is allowed.
>   - false means that no arguments are allowed.
>   - otherwise an array can be configured. Each item is either a string representing the fixed argument value or a `{ validator: string }` that defines a regex validating the argument value.
> 
> Example scope configuration
> 
> CLI: git commit -m "the commit message"
> 
> Configuration:
> ```javascript
> {
>   "scope": [
>     {
>       "name": "run-git-commit",
>       "cmd": "git",
>       "args": ["commit", "-m", { "validator": "\\S+" }]
>     }
>   ]
> }
> ```
> Usage:
>
> ```javascript
> import { Command } from '@tauri-apps/api/shell'
> new Command('run-git-commit', ['commit', '-m', 'the commit message'])
> ```
> Trying to execute any API with a program not configured on the scope results in a promise rejection due to denied access.

### Tauri
> Invoke your custom commands.
> 
> This package is also accessible with `window.__TAURI__.tauri` when build.withGlobalTauri in tauri.conf.json is set to true.

### Updater
> Customize the auto updater flow.
> 
> This package is also accessible with `window.__TAURI__.updater` when build.withGlobalTauri in tauri.conf.json is set to true.

### #indow

> Provides APIs to create windows, communicate with other windows and manipulate the current window.
> 
> This package is also accessible with `window.__TAURI__.window` when build.withGlobalTauri in tauri.conf.json is set to true.
> 
> The APIs must be added to tauri.allowlist.window in tauri.conf.json:
>
> ```javascript
> {
>   "tauri": {
>     "allowlist": {
>       "window": {
>         "all": true, // enable all window APIs
>         "create": true, // enable window creation
>         "center": true,
>         "requestUserAttention": true,
>         "setResizable": true,
>         "setTitle": true,
>         "maximize": true,
>         "unmaximize": true,
>         "minimize": true,
>         "unminimize": true,
>         "show": true,
>         "hide": true,
>         "close": true,
>         "setDecorations": true,
>         "setAlwaysOnTop": true,
>         "setContentProtected": true,
>         "setSize": true,
>         "setMinSize": true,
>         "setMaxSize": true,
>         "setPosition": true,
>         "setFullscreen": true,
>         "setFocus": true,
>         "setIcon": true,
>         "setSkipTaskbar": true,
>         "setCursorGrab": true,
>         "setCursorVisible": true,
>         "setCursorIcon": true,
>         "setCursorPosition": true,
>         "setIgnoreCursorEvents": true,
>         "startDragging": true,
>         "print": true
>       }
>     }
>   }
> }
> ```
> It is recommended to allowlist only the APIs you use for optimal bundle size and security.


## License
The MIT License (MIT)

Copyright (c) 2022 Muqiu Han

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.