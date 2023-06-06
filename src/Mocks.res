/// Clears mocked functions/data injected by the other functions in this module.
/// When using a test runner that doesn't provide a fresh window object for each test, 
/// calling this function will reset tauri specific properties.
@module("@tauri-apps/api/mocks")
external clearMocks: unit => unit = "clearMocks"

/// Intercepts all IPC requests with the given mock handler.
/// This function can be used when testing tauri frontend applications or 
/// when running the frontend in a Node.js context during static site generation.
@module("@tauri-apps/api/mocks")
external mockIPC: 'a => unit = "mockIPC"

/// Mocks one or many window labels.
/// In non-tauri context it is required to call this function before using the @tauri-apps/api/window module.
/// This function only mocks the presence of windows, window properties (e.g. width and height)
/// can be mocked like regular IPC calls using the mockIPC function.
@module("@tauri-apps/api/mocks")
external mockWindows: string => array<string> = "mockWindows"