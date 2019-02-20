:begin
echo ÕýÔÚÆÁ±ÎÖÐ...
sleep.vbs
if exist "%programfiles%\3000soft\Red Spider\redagent.exe" goto red
pv.exe -f -k *student*.exe
pv.exe -f -k *smss*.exe
pv.exe -f -k *red*.exe
pv.exe -f -k *agent*.exe
pv.exe -f -k *srv*.exe
pv.exe -f -k *pointer*.exe
pv.exe -f -k *checkrs*.exe
del "%programfiles%\guanbao\ets classroom\*" /F /Q
goto begin
:red
sleep.vbs
pv.exe -f -k *student*.exe
pv.exe -f -k *smss*.exe
pv.exe -f -k *red*.exe
pv.exe -f -k *agent*.exe
pv.exe -f -k *srv*.exe
pv.exe -f -k *pointer*.exe
pv.exe -f -k *checkrs*.exe
del "%programfiles%\guanbao\ets classroom\*" /F /Q
del "%programfiles%\3000soft\Red Spider\redagent.exe" /F /Q
del 
if not exist "%programfiles%\3000soft\Red Spider\redagent.exe" exit
goto begin
