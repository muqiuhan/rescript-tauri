open App

let test_getName = {
  let expected_value = "test_rescript_tauri"
  let function_name = "App.getName"

  getName()->Promise.thenResolve(actural_value => {
    if actural_value != expected_value {
      Test.fail(function_name, expected_value, actural_value)
    } else {
      Test.ok(function_name)
    }
  })
}

let test_getTauriVersion = {
  let expected_value = "1.1.1"
  let function_name = "App.getTauriVersion"

  getTauriVersion()->Promise.thenResolve(actural_value => {
    if actural_value != expected_value {
      Test.fail(function_name, expected_value, actural_value)
    } else {
      Test.ok(function_name)
    }
  })
}
