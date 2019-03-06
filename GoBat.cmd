@ECHO off
REM 变量设置
set PWD=%cd%
set OGO_PATH=%GOPATH%
set OGO_GO_BIN=%GOBIN%
set GOPATH=%cd%
set GOBIN=%cd%\bin
REM Go工具
set path=%path%;%GOPATH%\bin
REM linux习惯
@doskey ls=dir
@doskey cat=type $*

echo ****************OLD****************
echo OGO_PATH=%OGO_PATH%
echo OGO_GO_BIN=%OGO_GO_BIN%
echo **************CURRENT**************
echo PWD=%PWD%
echo GOPATH=%cd%
echo GOBIN=%cd%\bin
echo ***********************************
echo.

cmd