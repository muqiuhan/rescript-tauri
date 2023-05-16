open App

Test.test("App.getName", "test_rescript_tauri", await getName())

Test.test("App.getTauriVersion", "1.1.1", await getTauriVersion())

Test.test("App.getVersion", "0.0.0", await getVersion())

Test.test("App.hide", "()", Js.String.make(await hide()))

Test.test("App.show", "()", Js.String.make(await show()))
