@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
net config server /srvcomment:"Windows Server 2019 By Network Slutter" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /f /v Wallpaper /t REG_SZ /d D:\a\wallpaper.bat
net user Zungvjpprob3 zungvippro /add >nul
net localgroup administrators Zungvjpprob3 /add >nul
net user Zungvjpprob3 /active:yes >nul
net user installer /delete
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant Zungvjpprob3:F >nul
ICACLS C:\Windows\installer /grant Zungvjpprob3:F >nul
echo Successfully Installed !, If the RDP is Dead, Please Rebuild Again!
echo IP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Unable to get the NGROK tunnel, make sure NGROK_AUTH_TOKEN correct in Settings> Secrets> Repository secret. Maybe your previous VM is still running: https://dashboard.ngrok.com/status/tunnels "
echo Username: Zungvjpprob3
echo Password: zungvippro
echo Please Login To Your RDP!!
ping -n 10 127.0.0.1 >nul
