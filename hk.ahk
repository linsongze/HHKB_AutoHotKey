; # Win (Windows logo key)
; ! Alt
; ^ Control
; + Shift
; & An ampersand may be used between any two keys or mouse buttons to combine them into a custom hotkey.
; < 使用成对按键中左边的那个. 例如 <!a 相当于 !a, 只是使用左边的 Alt 键才可以触发.
; > 使用成对按键中右边的那个.
; * 通配符: 即使附加的修饰键被按住也能激发热键. 这常与 重映射 按键或按钮组合使用.
; ~ 激发热键时，不会屏蔽（被操作系统隐藏）热键中按键原有的功能
; $ 通常只在脚本使用 Send 命令发送包含了热键自身的按键时才需要使用此符号, 此时可以避免触发它自己. $ 前缀强制使用 键盘钩子 来实现此热键, 作为一个副作用这样避免了 Send 命令触发它自己. 
; $ 前缀相当于在此热键定义之前的某个位置指定了 #UseHook。
; UP 单词 UP 可以跟在热键名后面使得在释放按键时触发热键, 而不是按下时. 下面的例子把 LWin 重映射 为 LControl: *LWin::Send {LControl Down} *LWin Up::Send {LControl Up}

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