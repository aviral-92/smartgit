@echo off
setlocal enabledelayedexpansion
set PARAMS=
for %%x in (%*) do (
  if "%%x" == "-p" (
    set "PARAMS=!PARAMS! -P"
  ) else (
    set "PARAMS=!PARAMS! %%x"
  )
)
"%GIT_SSH_orig%" -batch %PARAMS%
exit 0
