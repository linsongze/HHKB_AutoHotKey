; # Win (Windows logo key)
; ! Alt
; ^ Control
; + Shift
; & An ampersand may be used between any two keys or mouse buttons to combine them into a custom hotkey.
; < ʹ�óɶ԰�������ߵ��Ǹ�. ���� <!a �൱�� !a, ֻ��ʹ����ߵ� Alt ���ſ��Դ���.
; > ʹ�óɶ԰������ұߵ��Ǹ�.
; * ͨ���: ��ʹ���ӵ����μ�����סҲ�ܼ����ȼ�. �ⳣ�� ��ӳ�� ������ť���ʹ��.
; ~ �����ȼ�ʱ���������Σ�������ϵͳ���أ��ȼ��а���ԭ�еĹ���
; $ ͨ��ֻ�ڽű�ʹ�� Send ����Ͱ������ȼ�����İ���ʱ����Ҫʹ�ô˷���, ��ʱ���Ա��ⴥ�����Լ�. $ ǰ׺ǿ��ʹ�� ���̹��� ��ʵ�ִ��ȼ�, ��Ϊһ������������������ Send ��������Լ�. 
; $ ǰ׺�൱���ڴ��ȼ�����֮ǰ��ĳ��λ��ָ���� #UseHook��
; UP ���� UP ���Ը����ȼ�������ʹ�����ͷŰ���ʱ�����ȼ�, �����ǰ���ʱ. ��������Ӱ� LWin ��ӳ�� Ϊ LControl: *LWin::Send {LControl Down} *LWin Up::Send {LControl Up}

;::runx::
; Run, "cmd"
;Return

; GroupAdd VimGroup, ahk_exe notepad++.exe ; NotePad

#Include  %A_ScriptDir%\vim.ahk
; #Include  %A_ScriptDir%\vim_ime.ahk


#1::Send, {F1}
#2::Send, {F2}
#3::Send, {F3}
#4::Send, {F4}
#5::Send, {F5}
#6::Send, {F6}
#7::Send, {F7}
#8::Send, {F8}
#9::Send, {F9}
#0::Send, {F10}
#-::Send, {F11}
#=::Send, {F12}


RAlt & 1::Send, {F1}
RAlt & 2::Send, {F2}
RAlt & 3::Send, {F3}
RAlt & 4::Send, {F4}
RAlt & 5::Send, {F5}
RAlt & 6::Send, {F6}
RAlt & 7::Send, {F7}
RAlt & 8::Send, {F8}
RAlt & 9::Send, {F9}
RAlt & 0::Send, {F10}
RAlt & -::Send, {F11}
RAlt & =::Send, {F12}

#c::Send,^c
#x::Send,^x
#v::Send,^v
;#s::Send {Volume_Up}
;#a::Send {Volume_Down 3}
#s::Send ^s
#a::Send ^a
#q::WinClose,A
#z::Send,^z
#y::Send,^y
#r::send, #r
#w::Send, ^w
+Enter::Send, {End}{Enter}
#Enter::Send, {HOME}{SHIFTDOWN}{END}{SHIFTUP}{CTRLDOWN}c{CTRLUP}{END}{Enter}{CTRLDOWN}v{CTRLUP}
RAlt & Enter::Send, {Home}{Enter}
!space::Send, {HOME}{SHIFTDOWN}{END}{SHIFTUP}
#u::Send,{CTRLDOWN}{ALTDOWN}{u}{CTRLUP}{ALTUP}
#!u::send ^!u
!y::Send,^z





;`::Del
Shift & `::Send,~
Control & `::Send,``

LAlt & h::Send {Left}
LAlt & l::Send {Right}
LAlt & j::Send {Down}
LAlt & k::Send {Up}

; #l:: return

; ^a::Send {Home}
; ^e::Send {End}
; ^d::Send {Delete}
; ^h::Send {Backspace}

; Send {Volume_Up}  ; Raise the master volume by 1 interval (typically 5%).
; Send {Volume_Down 3}  ; Lower the master volume by 3 intervals.
; Send {Volume_Mute}  ; Mute/unmute the master volume.


#n::Run, "NotePad++"

!+c::Run, "cmd"

+space::Send, {space}{space}{space}{space}
+backspace::Send, +{delete}