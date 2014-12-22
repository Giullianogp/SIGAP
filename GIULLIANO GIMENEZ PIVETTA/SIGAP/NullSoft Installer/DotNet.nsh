# DotNET and MSI version checking macro.
# Written by AnarkiNet(AnarkiNet@gmail.com) originally, modified by eyal0 (for use in http://www.sourceforge.net/projects/itwister)
# MSI check code based on http://www.codeproject.com/useritems/NSIS.asp
# Downloads the MSI version 3.1 and runs it if the user does not have the correct version.
# Downloads and runs the Microsoft .NET Framework version 2.0 Redistributable and runs it if the user does not have the correct version.
# To use, call the macro with a string:
# Example: non real version numbers
# !insertmacro CheckDotNET "2"
# !insertmacro CheckDotNET "2.0.9"
# (Version 2.0.9 is less than version 2.0.10.)
# Example: latest real version number at time of writing
# !insertmacro CheckDotNET "2.0.50727"
# All register variables are saved and restored by CheckDotNet
# No output

Function GetDXVersion
    Push $0
    Push $1

    ClearErrors
    ReadRegStr $0 HKLM "Software\Microsoft\DirectX" "Version"
    IfErrors noDirectX

    StrCpy $1 $0 4 9 ;get the minor version : 904
    StrCpy $0 $0 1 3 ;get the major version : 9
    
    ;IntOp $0 $0 * 100   ; $0 = major * 100 + minor
    ;IntOp $0 $0 + $1
    
    StrCpy $0 $0$1

    Goto done

    noDirectX:
      StrCpy $0 0

    done:
      Pop $1
      Exch $0
FunctionEnd

!macro CheckDotNET DotNetReqVer DirectXVer
  !define DOTNET_URL "http://www.microsoft.com/downloads/info.aspx?na=90&p=&SrcDisplayLang=en&SrcCategoryId=&SrcFamilyId=0856eacb-4362-4b0d-8edd-aab15c5e04f5&u=http%3a%2f%2fdownload.microsoft.com%2fdownload%2f5%2f6%2f7%2f567758a3-759e-473e-bf8f-52154438565a%2fdotnetfx.exe"
  !define DIRECTX_URL "http://www.microsoft.com/downloads/info.aspx?na=90&p=&SrcDisplayLang=en&SrcCategoryId=&SrcFamilyId=2da43d38-db71-4c1b-bc6a-9b6652cd92a3&u=http%3a%2f%2fdownload.microsoft.com%2fdownload%2f1%2f7%2f1%2f1718CCC4-6315-4D8E-9543-8E28A4E18C4C%2fdxwebsetup.exe"
  !define MSI31_URL "http://download.microsoft.com/download/1/4/7/147ded26-931c-4daf-9095-ec7baf996f46/WindowsInstaller-KB893803-v2-x86.exe"

  DetailPrint "Checking your .NET Framework and DirectX version..."

  ;callee register save
  Push $0
  Push $1
  Push $2
  Push $3
  Push $4
  Push $5
  Push $6 ;backup of installed ver
  Push $7 ;backup of DoNetReqVer
  Push $8 ;backup of DirectXReqVer
 
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 ;                               MSI                                          ;
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  GetDLLVersion "$SYSDIR\msi.dll" $R0 $R1
  IntOp $R2 $R0 / 0x00010000 ; $R2 now contains major version
  IntOp $R3 $R0 & 0x0000FFFF ; $R3 now contains minor version
  IntOp $R4 $R1 / 0x00010000 ; $R4 now contains release
  IntOp $R5 $R1 & 0x0000FFFF ; $R5 now contains build
  StrCpy $0 "$R2.$R3.$R4.$R5" ; $0 now contains string like "1.2.0.192"
 
  ${If} $R2 < '3'
    ;options
    SetOutPath "$TEMP"
    SetOverwrite on
 
    MessageBox MB_YESNOCANCEL|MB_ICONEXCLAMATION \
    "Your MSI version: $0.$\nRequired Version: 3 or greater.$\nDownload MSI version from www.microsoft.com?" \
    /SD IDYES IDYES DownloadMSI IDNO NewMSI
    goto GiveUpDotNET ;IDCANCEL
 
  ${Else}
    DetailPrint "MSI 3.1 already installed"
    goto NewMSI
  ${EndIf}
 
DownloadMSI:
  DetailPrint "Beginning download of MSI 3.1."
  NSISDL::download ${MSI31_URL} "$TEMP\WindowsInstaller-KB893803-v2-x86.exe"
  DetailPrint "Completed download."
  Pop $0
  ${If} $0 == "cancel"
    MessageBox MB_YESNO|MB_ICONEXCLAMATION \
    "Download cancelled.  Continue Installation?" \
    IDYES NewMSI IDNO GiveUpDotNET
  ${ElseIf} $0 != "success"
    MessageBox MB_YESNO|MB_ICONEXCLAMATION \
    "Download failed:$\n$0$\n$\nContinue Installation?" \
    IDYES NewMSI IDNO GiveUpDotNET
  ${EndIf}
  DetailPrint "Pausing installation while downloaded MSI3.1 installer runs."
  ExecWait '$TEMP\WindowsInstaller-KB893803-v2-x86.exe /norestart' $0
  DetailPrint "Completed MSI3.1 install/update. Exit code = '$0'. Removing MSI3.1 installer."
  Delete "$TEMP\WindowsInstaller-KB893803-v2-x86.exe"
  DetailPrint "MSI3.1 installer removed."
  goto NewMSI
 
NewMSI:
  DetailPrint "MSI3.1 installation done. Proceeding with remainder of installation."
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;                                  DirectX                                     ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  Call GetDXVersion
  Pop $R3

  IntCmp $R3 ${DirectXVer} AlreadyInstalledDirectX OldDirectX AlreadyInstalledDirectX

OldDirectX:
    SetOutPath "$TEMP"
    SetOverwrite on
    goto DownloadDirectX
DownloadDirectX:
  DetailPrint "Beginning download of DirectX 9.0c version."
  NSISDL::download /TIMEOUT=30000 "${DIRECTX_URL}" "$TEMP\dxwebsetup.exe"
  
;  NSISDL::download /TRANSLATE "$(DESC_DOWNLOADING)" "$(DESC_CONNECTING)" \
;  "$(DESC_SECOND)" "$(DESC_MINUTE)" "$(DESC_HOUR)" "$(DESC_PLURAL)" \
;  "$(DESC_PROGRESS)" "$(DESC_REMAINING)" \
;  /TIMEOUT=30000 "${DIRECTX_URL}" "$TEMP\directx_jun2007_redist.exe"

  Pop $0

  ${If} $0 == "cancel"
    MessageBox MB_YESNO|MB_ICONEXCLAMATION \
    "Download cancelled.  Continue Installation?" \
    IDYES NewDirectX IDNO GiveUpDotNET
  ${ElseIf} $0 != "success"
    goto GiveUpDotNET
  ${EndIf}

  DetailPrint "Completed download."
  DetailPrint "Pausing installation while downloaded DirectX installer runs."
  ExecWait '$TEMP\dxwebsetup.exe /q /c:"install" /t:$TEMP'
  DetailPrint "Completed DirectX install/update. Removing DirectX installer."
  Delete "$TEMP\dxwebsetup.exe"
  DetailPrint "DirectX installer removed."
  goto NewDirectX
AlreadyInstalledDirectX:
  DetailPrint "DirectX 9.0c already installed"
NewDirectX:
  DetailPrint "DirectX 9.0c installation done. Proceeding with remainder of installation."
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
 
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 ;                                  NetFX                                     ;
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  StrCpy $7 ${DotNetReqVer}
 
  System::Call "mscoree::GetCORVersion(w .r0, i ${NSIS_MAX_STRLEN}, *i r2r2) i .r1 ?u"
 
  ${If} $0 == 0
  	DetailPrint ".NET Framework not found, download is required for program to run."
    Goto NoDotNET
  ${EndIf}
 
  ;at this point, $0 has maybe v2.345.678.
  StrCpy $0 $0 $2 1 ;remove the starting "v", $0 has the installed version num as a string
  StrCpy $6 $0
  StrCpy $1 $7 ;$1 has the requested verison num as a string
 
  ;MessageBox MB_OKCANCEL "found $0" IDCANCEL GiveUpDotNET
 
  ;MessageBox MB_OKCANCEL "looking for $1" IDCANCEL GiveUpDotNET
 
  ;now let's compare the versions, installed against required <part0>.<part1>.<part2>.
  ${Do}
    StrCpy $2 "" ;clear out the installed part
    StrCpy $3 "" ;clear out the required part
 
    ${Do}
      ${If} $0 == "" ;if there are no more characters in the version
        StrCpy $4 "." ;fake the end of the version string
      ${Else}
        StrCpy $4 $0 1 0 ;$4 = character from the installed ver
        ${If} $4 != "."
          StrCpy $0 $0 ${NSIS_MAX_STRLEN} 1 ;remove that first character from the remaining
        ${EndIf}
      ${EndIf}
 
      ${If} $1 == ""  ;if there are no more characters in the version
        StrCpy $5 "." ;fake the end of the version string
      ${Else}
        StrCpy $5 $1 1 0 ;$5 = character from the required ver
        ${If} $5 != "."
          StrCpy $1 $1 ${NSIS_MAX_STRLEN} 1 ;remove that first character from the remaining
        ${EndIf}
      ${EndIf}
      ;MessageBox MB_OKCANCEL "installed $2,$4,$0 required $3,$5,$1" IDCANCEL GiveUpDotNET
      ${If} $4 == "."
      ${AndIf} $5 == "."
        ${ExitDo} ;we're at the end of the part
      ${EndIf}
 
      ${If} $4 == "." ;if we're at the end of the current installed part
        StrCpy $2 "0$2" ;put a zero on the front
      ${Else} ;we have another character
        StrCpy $2 "$2$4" ;put the next character on the back
      ${EndIf}
      ${If} $5 == "." ;if we're at the end of the current required part
        StrCpy $3 "0$3" ;put a zero on the front
      ${Else} ;we have another character
        StrCpy $3 "$3$5" ;put the next character on the back
      ${EndIf}
    ${Loop}
    ;MessageBox MB_OKCANCEL "finished parts: installed $2,$4,$0 required $3,$5,$1" IDCANCEL GiveUpDotNET
 
    ${If} $0 != "" ;let's remove the leading period on installed part if it exists
      StrCpy $0 $0 ${NSIS_MAX_STRLEN} 1
    ${EndIf}
    ${If} $1 != "" ;let's remove the leading period on required part if it exists
      StrCpy $1 $1 ${NSIS_MAX_STRLEN} 1
    ${EndIf}
 
    ;$2 has the installed part, $3 has the required part
    ${If} $2 S< $3
      IntOp $0 0 - 1 ;$0 = -1, installed less than required
      ${ExitDo}
    ${ElseIf} $2 S> $3
      IntOp $0 0 + 1 ;$0 = 1, installed greater than required
      ${ExitDo}
    ${ElseIf} $2 == ""
    ${AndIf} $3 == ""
      IntOp $0 0 + 0 ;$0 = 0, the versions are identical
      ${ExitDo}
    ${EndIf} ;otherwise we just keep looping through the parts
  ${Loop}
 
  ${If} $0 < 0
    DetailPrint ".NET Framework Version found: $6, but is older than the required version: $7"
    Goto OldDotNET
  ${Else}
    DetailPrint ".NET Framework Version found: $6, equal or newer to required version: $7."
    Goto NewDotNET
  ${EndIf}
 
NoDotNET:
    goto DownloadDotNET
OldDotNET:
    goto DownloadDotNET
DownloadDotNET:
  DetailPrint "Beginning download of latest .NET Framework version."
  NSISDL::download /TIMEOUT=30000 "${DOTNET_URL}" "$TEMP\dotnetfx.exe"

;  NSISDL::download /TRANSLATE "$(DESC_DOWNLOADING)" "$(DESC_CONNECTING)" \
;  "$(DESC_SECOND)" "$(DESC_MINUTE)" "$(DESC_HOUR)" "$(DESC_PLURAL)" \
;  "$(DESC_PROGRESS)" "$(DESC_REMAINING)" \
;  /TIMEOUT=30000 "${DOTNET_URL}" "$TEMP\dotnetfx.exe"

  DetailPrint "Completed download."
  Pop $0
  ${If} $0 == "cancel"
    goto AbortStep
  ${ElseIf} $0 != "success"
    goto AbortStep
  ${EndIf}

  DetailPrint "Pausing installation while downloaded .NET Framework installer runs."
  ExecWait '$TEMP\dotnetfx.exe /c:"install"'
  DetailPrint "Completed .NET Framework install/update. Removing .NET Framework installer."
  Delete "$TEMP\dotnetfx.exe"
  DetailPrint ".NET Framework installer removed."
  goto NewDotNet
AbortStep:
  DetailPrint "The installation was cancelled!"
GiveUpDotNET:
  Abort
NewDotNET:
  DetailPrint "Proceeding with remainder of installation."
  Pop $8
  Pop $7
  Pop $6
  Pop $5
  Pop $4
  Pop $3
  Pop $2
  Pop $1
  Pop $0
!macroend