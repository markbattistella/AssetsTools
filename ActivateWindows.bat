@ECHO off

REM Check/Get permission
:check_Permission
  NET session >nul 2>&1
  IF %errorLevel% == 0 (
      GOTO Activator
  ) ELSE (
      GOTO UACPrompt
  )

:UACPrompt
	ECHO Set UAC = CreateObject("Shell.Application") > "%temp%\getadmin1.vbs"
	ECHO UAC.ShellExecute "cmd","/c ""%~s0"" %*", "", "runas", 1 >> "%temp%\getadmin1.vbs"
	"%temp%\getadmin1.vbs"
    DEL "%temp%\getadmin1.vbs"
    EXIT

:Activator
  SLMGR /ipk XXXXX-XXXXX-XXXXX-XXXXX-XXXXX
  SLMGR /skms kms.domain.ltd
  ECHO That step might take longer than the others. Hold on tight!
  SLMGR /ato
  EXIT
