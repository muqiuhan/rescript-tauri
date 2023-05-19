/// Provides operating system-related utility methods and properties.
///
/// This package is also accessible with window.__TAURI__.os when build.withGlobalTauri in tauri.conf.json is set to true.
///
/// The APIs must be added to tauri.allowlist.os in tauri.conf.json:
///
/// {
///   "tauri": {
///     "allowlist": {
///       "os": {
///         "all": true, // enable all Os APIs
///       }
///     }
///   }
/// }
///
/// It is recommended to allowlist only the APIs you use for optimal bundle size and security.

module Tauri_OS = {
  /// Returns the operating system CPU architecture for which the tauri app was compiled.
  /// Possible values are 'x86', 'x86_64', 'arm', 'aarch64', 'mips', 'mips64', 'powerpc', 'powerpc64', 'riscv64', 's390x', 'sparc64'.
  /// Since: 1.0.0
  /// Returns: Promise.t<string>
  @module("@tauri-apps/api/os")
  external arch: unit => promise<string> = "arch"

  /// Returns 'Linux' on Linux, 'Darwin' on macOS, and 'Windows_NT' on Windows.
  /// Since: 1.0.0
  /// Returns: Promise.t<string>
  @module("@tauri-apps/api/os")
  external os_type: unit => promise<string> = "type"
}

module Arch = {
  type t =
    | X86
    | X86_64
    | Arm
    | AArch64
    | Mips
    | Mips64
    | Powerpc
    | Powerpc64
    | Riscv64
    | S390x
    | Sparc64

  let to_string = arch => {
    switch arch {
    | X86 => "x86"
    | X86_64 => "x86_64"
    | Arm => "arm"
    | AArch64 => "aarch64"
    | Mips => "mips"
    | Mips64 => "mips64"
    | Powerpc => "powerpc"
    | Powerpc64 => "powerpc64"
    | Riscv64 => "riscv64"
    | S390x => "s390x"
    | Sparc64 => "sparc64"
    }
  }

  let of_string = arch => {
    switch arch {
    | "x86" => X86
    | "x86_64" => X86_64
    | "arm" => Arm
    | "aarch64" => AArch64
    | "mips" => Mips
    | "mips64" => Mips64
    | "powerpc" => Powerpc
    | "powerpc64" => Powerpc64
    | "riscv64" => Riscv64
    | "s390x" => S390x
    | "sparc64" => Sparc64
    | _ =>
      raise(
        Error.Tauri_error(
          "Possible values are 'x86', 'x86_64', 'arm', 'aarch64', 'mips', 'mips64', 'powerpc', 'powerpc64', 'riscv64', 's390x', 'sparc64'.",
        ),
      )
    }
  }
}

module OSType = {
  type t =
    | Linux
    | Darwin
    | Windows_NT

  let to_string = os_type => {
    switch os_type {
    | Linux => "Linux"
    | Darwin => "Darwin"
    | Windows_NT => "Windows_NT"
    }
  }

  let of_string = os_type => {
    switch os_type {
    | "Linux" => Linux
    | "Darwin" => Darwin
    | "Windows_NT" => Windows_NT
    | _ => raise(Error.Tauri_error("Possible values are 'Linux', 'Darwin', 'Windows_NT'."))
    }
  }
}

type platform =
  | Linux
  | Darwin
  | Ios
  | Freebsd
  | Dragonfly
  | Netbsd
  | Openbsd
  | Solaris
  | Android
  | Win32

type eol =
  | POSIX
  | Windows

/// Returns the operating system CPU architecture for which the tauri app was compiled.
/// Possible values are X86, X86_64, Arm, AArch64, Mips, Mips64, Powerpc, Powerpc64, Riscv64, S390x, Sparc64
/// Returns: Promise.t<Arch.t>
let arch = () => {
  Tauri_OS.arch()->Promise.thenResolve(arch => Arch.of_string(arch))
}

/// Returns Linux on Linux, Darwin on macOS, and Windows_NT on Windows.
/// Returns: Promise.t<OSType.t>
let os_type = () => {
  Tauri_OS.os_type()->Promise.thenResolve(arch => OSType.of_string(arch))
}
