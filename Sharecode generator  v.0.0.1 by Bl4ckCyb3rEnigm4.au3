#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=ICON1.ico
#AutoIt3Wrapper_Compile_Both=y
#AutoIt3Wrapper_Res_Comment=Sharecode generator by Bl4ckCyb3rEnigm4
#AutoIt3Wrapper_Res_Description=Sharecode generator by Bl4ckCyb3rEnigm4
#AutoIt3Wrapper_Res_Fileversion=0.0.1.0
#AutoIt3Wrapper_Res_ProductName=Sharecode generator by Bl4ckCyb3rEnigm4
#AutoIt3Wrapper_Res_ProductVersion=0.0.1
#AutoIt3Wrapper_Res_LegalCopyright=Bl4ckCyb3rEnigm4
#AutoIt3Wrapper_Run_Au3Stripper=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

$OldData=""
while True
	$Data=ClipGet()
	if StringInStr($Data, "http")<>0 And StringInStr($Data, "/")<>0 And StringInStr($Data, @CRLF)==0 And $OldData<>$Data Then
		ClipPut("Site: "&StringTrimRight($Data, StringLen($Data)-StringInStr($Data, "/", 0, 1, 9)+1)&@CRLF&"Sharecode: "&StringTrimLeft($Data, StringInStr($Data, "/", 0, 1, 9)))

		TrayTip("Sharecode generator by Bl4ckCyb3rEnigm4", "Sharecode generated", 3, 1)

		$OldData=ClipGet()
	EndIf
	Sleep(30)
WEnd



