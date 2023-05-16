/// Fail to test exception(function_name, expected_value, actual_value)
exception Test_fail(string, string, string)

let to_string = exn => {
  switch exn {
  | Test_fail(function_name, expected_value, actual_value) =>
    "Test " ++ function_name ++ ", expect " ++ expected_value ++ " but actually " ++ actual_value
  | e => "Unknown exception : " ++ Js.String.make(e)
  }
}

let fail = (function_name, expected_value, actual_value) => {
  Js.Console.error(to_string(Test_fail(function_name, expected_value, actual_value)))
}

let ok = function_name => {
  Js.Console.info("Test " ++ function_name ++ "...ok!")
}

let test = (function_name, expected_value, actual_value) => {
  if actual_value != expected_value {
    fail(function_name, expected_value, actual_value)
  } else {
    ok(function_name)
  }
}
