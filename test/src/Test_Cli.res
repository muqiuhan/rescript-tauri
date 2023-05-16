open Cli

Test.test(
  "Cli.getMatches",
  "()",
  getMatches()->Promise.thenResolve(result => Js.String.make(result)),
)
