cls
@echo off
title ����������...���Ե�
echo =====================================��ӭʹ��==================================
set er=1
echo ����������...
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
if %er%==0 echo ���γɹ���
if %er%==0 title ���γɹ���
if %er%==1 title ����ʧ�ܣ�
if %er%==1 echo ����ʧ�ܣ�(2000/XP:��ʹ���ֶ��������η�)
echo ������ӽ����Զ��������밴���������(���ڽ��Զ��˳�)
echo Windows 95/NT/98/ME ��ֱ�ӹرձ�����
pause
around.vbs