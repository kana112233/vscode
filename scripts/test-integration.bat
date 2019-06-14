@echo off
setlocal

pushd %~dp0\..

set VSCODEUSERDATADIR=%TMP%\vscodeuserfolder-%RANDOM%-%TIME:~6,5%

REM :: Integration & performance tests in AMD
REM call .\scripts\test.bat --runGlob **\*.integrationTest.js %*
REM if %errorlevel% neq 0 exit /b %errorlevel%

REM :: Tests in the extension host
REM call .\scripts\code.bat %~dp0\..\extensions\vscode-api-tests\testWorkspace --extensionDevelopmentPath=%~dp0\..\extensions\vscode-api-tests --extensionTestsPath=%~dp0\..\extensions\vscode-api-tests\out\singlefolder-tests --disableExtensions --user-data-dir=%VSCODEUSERDATADIR%
REM if %errorlevel% neq 0 exit /b %errorlevel%

REM call .\scripts\code.bat %~dp0\..\extensions\vscode-api-tests\testworkspace.code-workspace --extensionDevelopmentPath=%~dp0\..\extensions\vscode-api-tests --extensionTestsPath=%~dp0\..\extensions\vscode-api-tests\out\workspace-tests --disableExtensions --user-data-dir=%VSCODEUSERDATADIR%
REM if %errorlevel% neq 0 exit /b %errorlevel%

REM call .\scripts\code.bat %~dp0\..\extensions\vscode-colorize-tests\test --extensionDevelopmentPath=%~dp0\..\extensions\vscode-colorize-tests --extensionTestsPath=%~dp0\..\extensions\vscode-colorize-tests\out --disableExtensions --user-data-dir=%VSCODEUSERDATADIR%
REM if %errorlevel% neq 0 exit /b %errorlevel%

REM call .\scripts\code.bat $%~dp0\..\extensions\emmet\test-fixtures --extensionDevelopmentPath=%~dp0\..\extensions\emmet --extensionTestsPath=%~dp0\..\extensions\emmet\out\test --disableExtensions --user-data-dir=%VSCODEUSERDATADIR% .
REM if %errorlevel% neq 0 exit /b %errorlevel%

REM # Tests in commonJS (HTML, CSS, JSON language server tests...)
REM call .\scripts\node-electron.bat .\node_modules\mocha\bin\_mocha .\extensions\*\server\out\test\**\*.test.js
REM if %errorlevel% neq 0 exit /b %errorlevel%

rmdir /s /q %VSCODEUSERDATADIR%

popd

endlocal
