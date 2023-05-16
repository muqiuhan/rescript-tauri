open App

let test_getName = {
  let expected_value = "test_rescript_tauri"
  let function_name = "App.getName"
  let actural_value = await getName()

  if actural_value != expected_value {
    Test.fail(function_name, expected_value, actural_value)
  } else {
    Test.ok(function_name)
  }
}

let test_getTauriVersion = {
  let expected_value = "1.1.1"
  let function_name = "App.getTauriVersion"
  let actural_value = await getTauriVersion()

  if actural_value != expected_value {
    Test.fail(function_name, expected_value, actural_value)
  } else {
    Test.ok(function_name)
  }
}

let test_getVersion = {
  let expected_value = "0.0.0"
  let function_name = "App.getVersion"
  let actural_value = await getVersion()

  if actural_value != expected_value {
    Test.fail(function_name, expected_value, actural_value)
  } else {
    Test.ok(function_name)
  }
}

let test_hide = {
  let expected_value = ()
  let function_name = "App.hide"
  let actural_value = await hide()

  if actural_value != expected_value {
    Test.fail(function_name, "unit", Js.String.make(actural_value))
  } else {
    Test.ok(function_name)
  }
}

let test_show = {
  let expected_value = ()
  let function_name = "App.show"
  let actural_value = await show()

  if actural_value != expected_value {
    Test.fail(function_name, "unit", Js.String.make(actural_value))
  } else {
    Test.ok(function_name)
  }
}
