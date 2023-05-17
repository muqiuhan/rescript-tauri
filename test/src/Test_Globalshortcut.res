open Globalshortcut

Test.test(
  "isRegister",
  "true",
  isRegistered("CommandOrControl+P")->Promise.thenResolve(is => {
    if is {
      "false"
    } else {
      "true"
    }
  }),
)

let testIsRegistered = shortcut => {
  isRegistered(shortcut)->Promise.thenResolve(is => {
    if is {
      "false"
    } else {
      "true"
    }
  })
}

Test.test(
  "register",
  "true",
  register("CommandOrControl+P", shortcut => {
    Js.log("register " ++ shortcut)
  })->Promise.then(() => {
    testIsRegistered("CommandOrControl+P")
  }),
)

Test.test(
  "registerAll",
  "true",
  registerAll(["CommandOrControl+A", "CommandOrControl+B"], shortcut => {
    Js.log("register " ++ shortcut)
  })->Promise.then(() => {
    testIsRegistered("CommandOrControl+A")
  }),
)

Test.test(
  "unregister",
  "false",
  unregister("CommandOrControl+P")->Promise.then(() => {
    testIsRegistered("CommandOrControl+P")
  }),
)

Test.test(
  "unregisterAll",
  "false",
  unregisterAll(["CommandOrControl+A", "CommandOrControl+B"])->Promise.then(() => {
    testIsRegistered("CommandOrControl+B")
  }),
)