#include <IE.au3>

; Opens IE with three tabs

$oIE = _IECreate("http://as2ha130:8080/BOE/CMC/1703042335/admin/App/home.faces?service=%2Fadmin%2FApp%2FappService.jsp&appKind=CMC&bttoken=MDAwRGM2MzBsQTwBSWVM5ZWA5SFNCSlhVXl0PLO05YMzAEQ")
$IEhwnd = _IEPropertyGet($oIE, "hwnd")
__IENavigate($oIE, "http://as2ha130:8080/BOE/CMC/1703042335/admin/App/home.faces?service=%2Fadmin%2FApp%2FappService.jsp&appKind=CMC&bttoken=MDAwRGM2MzBsQTwBSWVM5ZWA5SFNCSlhVXl0PLO05YMzAEQ", 0, 0x800)


; Tab Loop

While 1
If WinExists($IEhwnd) Then
    WinActivate($IEhwnd)
Else
    ExitLoop
EndIf

Sleep(5000)
Send("^{TAB}")
WEnd

_IEQuit($oIE)