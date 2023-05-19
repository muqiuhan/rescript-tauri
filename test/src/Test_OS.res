open OS

Test.test(
  "OS.arch",
  "",
  arch()->Promise.thenResolve(arch => {
    Js.log(Arch.to_string(arch))
    ""
  }),
)
