open Dialog

Test.test(
  "Dialog.ConfirmDialogOptions.make",
  "",
  Promise.make(_ => {
    _ => Js.log(ConfirmDialogOptions.make(~cancel=None, ~ok=None, ~title=None, ~typ=None))
  }),
)
