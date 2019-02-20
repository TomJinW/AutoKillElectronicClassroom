cls
@echo off
title 正在屏蔽中...请稍等
echo =====================================欢迎使用==================================
set er=1
echo 正在屏蔽中...
pv.exe -f -k student*.exe
if not errorlevel 1 set er=0
pv.exe -f -k *student*.exe
if not errorlevel 1 set er=0
pv.exe -f -k *stu*.exe
if not errorlevel 1 set er=0
pv.exe -f -k *smss*.exe
if not errorlevel 1 set er=0
pv.exe -f -k *red*.exe
if not errorlevel 1 set er=0
pv.exe -f -k *agent*.exe
if not errorlevel 1 set er=0
pv.exe -f -k *ghost*.exe
if not errorlevel 1 set er=0
pv.exe -f -k *srv*.exe
if not errorlevel 1 set er=0
pv.exe -f -k *checkrs*.exe
if not errorlevel 1 set er=0
del "%programfiles%\guanbao\ets classroom\*" /F /Q
del "%programfiles%\Lingbo\NetClass\*" /F /Q
cls
if %er%==0 echo 屏蔽成功！
if %er%==0 title 屏蔽成功！
if %er%==1 title 屏蔽失败！
if %er%==1 echo 屏蔽失败！(2000/XP:请使用手动输入屏蔽法)
echo 如果电子教室自动启动，请按任意键继续(窗口将自动退出)
echo Windows 95/NT/98/ME 请直接关闭本窗口
pause
around.vbs