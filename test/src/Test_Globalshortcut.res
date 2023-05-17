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

Test.test(
  "register",
  "true",
  register("CommandOrControl+P", shortcut => {
    Js.log("register " ++ shortcut)
  })->Promise.then(() => {
    isRegistered("CommandOrControl+P")->Promise.thenResolve(is => {
      if is {
        "true"
      } else {
        "false"
      }
    })
  }),
)
