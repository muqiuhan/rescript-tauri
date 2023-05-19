open OS

Test.test(
  "OS.arch",
  "",
  arch()->Promise.thenResolve(arch => {
    Js.log(Arch.to_string(arch))
    ""
  }),
)

Test.test(
  "OS.platform",
  "",
  platform()->Promise.thenResolve(platform => {
    Js.log(Platform.to_string(platform))
    ""
  }),
)

Test.test(
  "OS.os_type",
  "",
  os_type()->Promise.thenResolve(os_type => {
    Js.log(OSType.to_string(os_type))
    ""
  }),
)

Test.test(
  "OS.version",
  "",
  version()->Promise.thenResolve(version => {
    Js.log(version)
    ""
  })
)

Test.test(
  "OS.tempdir",
  "",
  tempdir()->Promise.thenResolve(tempdir => {
    Js.log(tempdir)
    ""
  }),
)
