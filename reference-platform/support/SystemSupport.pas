Unit SystemSupport;

{
Copyright (c) 2001-2013, Kestral Computing Pty Ltd (http://www.kestral.com.au)
All rights reserved.

Redistribution and use in source and binary forms, with or without modification, 
are permitted provided that the following conditions are met:

 * Redistributions of source code must retain the above copyright notice, this 
   list of conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright notice, 
   this list of conditions and the following disclaimer in the documentation 
   and/or other materials provided with the distribution.
 * Neither the name of HL7 nor the names of its contributors may be used to 
   endorse or promote products derived from this software without specific 
   prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND 
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED 
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. 
IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
POSSIBILITY OF SUCH DAMAGE.
}

Interface


Uses
  SysUtils, {$IFDEF MACOS} OSXUtils, MacApi.Foundation, {$ELSE} Windows, ShellApi, ShlObj, {$ENDIF}
  DateSupport, StringSupport;

Function SystemTemp : String;
Function SystemManualTemp : String;
Function ProgData : String;


Implementation

Var
{$IFDEF MSWINDOWS}
  gOSInfo : TOSVersionInfo;
  gSystemInfo : TSystemInfo;
{$ENDIF}
  gNTDLLDebugBreakPointIssuePatched : Boolean = False;

Function SystemManualTemp : String;
  {$IFDEF MACOS}
Begin
  result := '/tmp';
  {$ELSE}
  result := 'c:/temp';
  {$ENDIF}
End;

Function SystemTemp : String;
  {$IFDEF MACOS}
Begin
  result := UTF8ToString(TNSString.Wrap(NSString(NSTemporaryDirectory)).UTF8String); {todo-osx}
  {$ELSE}
Var
  iLength : Integer;
Begin
  SetLength(Result, MAX_PATH + 1);

  iLength := GetTempPath(MAX_PATH, PChar(Result));

  If Not IsPathDelimiter(Result, iLength) Then
  Begin
    Inc(iLength);
    Result[iLength] := '\';
  End;

  SetLength(Result, iLength);
  {$ENDIF}
End;

Function SystemIsWindowsNT : Boolean;
Begin
  {$IFDEF MACOS}
  Result := false;
  {$ELSE}
  Result := gOSInfo.dwPlatformId >= VER_PLATFORM_WIN32_NT;
  {$ENDIF}
End;

Function SystemIsWindows7 : Boolean;
Begin
  {$IFDEF MACOS}
  Result := false;
  {$ELSE}
  Result := SystemIsWindowsNT And (gOSInfo.dwMajorVersion >= 6) And (gOSInfo.dwMinorVersion >= 1);
  {$ENDIF}
End;

{$IFDEF MACOS}
Function ProgData : String;
Begin
  Result := '/Applications';
End;

{$ELSE}
Function ShellFolder(iID : Integer) : String;
Var
  sPath : Array[0..2048] Of Char;
  pIDs  : PItemIDList;
Begin
  Result := '';

  If SHGetSpecialFolderLocation(0, iID, pIDs) = S_OK Then
  Begin
    FillChar(sPath, SizeOf(sPath), #0);

    If ShGetPathFromIDList(pIDs, sPath) Then
      Result := IncludeTrailingPathDelimiter(sPath);
  End;
End;

Function ProgData : String;
Begin
  Result := ShellFolder(CSIDL_COMMON_APPDATA);
End;
{$ENDIF}



Initialization
  {$IFDEF MSWINDOWS}
  FillChar(gSystemInfo, SizeOf(gSystemInfo), 0);
  FillChar(gOSInfo, SizeOf(gOSInfo), 0);

  gOSInfo.dwOSVersionInfoSize := SizeOf(gOSInfo);

  GetVersionEx(gOSInfo);
  GetSystemInfo(gSystemInfo);

  If SystemIsWindows7 Then
  Begin
    // NOTE: Windows 7 changes the behaviour of GetThreadLocale.
    //       This is a workaround to force sysutils to use the correct locale.

    SetThreadLocale(GetUserDefaultLCID);
    SysUtils.GetFormatSettings;
  End;
  {$ENDIF}
End. // SystemSupport //
