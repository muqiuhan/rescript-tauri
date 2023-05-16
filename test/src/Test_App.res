open App

Test.test("App.hide", "()", hide()->Promise.thenResolve(result => Js.String.make(result)))

Test.test("App.show", "()", show()->Promise.thenResolve(result => Js.String.make(result)))

Test.test("App.getName", "test_rescript_tauri", getName())

Test.test("App.getTauriVersion", "1.1.1", getTauriVersion())

Test.test("App.getVersion", "0.0.0", getVersion())
