open Clipboard

Test.test(
  "Clipboard.readText",
  "",
  readText()->Promise.thenResolve(result =>
    switch result {
    | Some(_) => ""
    | None => "None"
    }
  ),
)

Test.test(
  "Clipboard.writeText",
  "abc",
  writeText("abc")->Promise.then(() =>
    readText()->Promise.thenResolve(result => {
      switch result {
      | Some(result) => result
      | None => "None"
      }
    })
  ),
)
