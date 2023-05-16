@module("./assets/react.svg") external reactLogo: string = "default"
%%raw(`import './Test_Tauri.css'`)

module Test_App = {
  include Test_App
}

@react.component
let make = () => {
  <div className="container">
    <h1> {"Open the console to view the test results!"->React.string} </h1>
  </div>
}
