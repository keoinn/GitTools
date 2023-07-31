:: =============================================================================
:: Github Tools: Copy SSH Key Scrtips for Windwos Command Prompt
::
:: @filename	github_ssh_copy_key.bat
:: @author	Ken Chang (keoinn@gmail.com)
:: @copyright	Copyright (C) 2023 by W. Y. Chang, YavikTech. All rights reserved.
:: @license	http://opensource.org/licenses/MIT	MIT License
:: @link	
:: @since	Version 1.0.0
:: @filesource
:: =============================================================================
@echo off
chcp 65001

:: SSH Key 檔案名稱
set ssh_file_name=id_ecdsa
:: SSH Key 存放路徑 (不含檔名)
:: %userprofile% = 個人資料夾路徑 = C:\Users\user\
:: %userprofile%\OneDrive\桌面\ = 放在 C:\Users\user\OneDrive\桌面\
set mySSH_path=%userprofile%\OneDrive\桌面\

:: 基本預設路徑 (以下非必要不更動)
set ssh_home=.ssh
set "ssh_home_path=%userprofile%\%ssh_home%\"
set file_path=%mySSH_path%%ssh_file_name%

if exist "%mySSH_path%\%ssh_file_name%" (
  echo Step 0: Process start.
) else (
  echo 目標檔案不存在，請設定或更新參數 mySSH_path
  pause
  exit(0)
)


:: Check ssh_key_home folder is exist or not. 
if exist %ssh_home_path% (
  echo Step 1: SSH Keys folder is exist.
) else (
  mkdir %ssh_home_path%
  echo Step 1: Creat the ".ssh" folder in %userprofile%.
)

:: Check ssh_key is exist or not.
if exist "%ssh_home_path%/%ssh_file_name%" (
  echo Step 2: 失敗! %ssh_home_path% 存在名為 %ssh_file_name% 的檔案，請先刪除或另存舊檔案。
) else (
  copy %file_path% %ssh_home_path%
  echo Step 2: COPY %file_path% to %ssh_home_path%.
)

:: Chang permission of key



:: Use key to connect github server.
echo Step 3: 測試 SSH 連線。
ssh -T -i "%ssh_home_path%/%ssh_file_name%" git@github.com


echo NOTE: 出現"Hi xxx! You've successfully authenticated....." 表示成功

echo SSH Key 複製程式完成。

echo 按下任意建離開，關閉視窗。
pause


:: ssh -i ".\id_ecdsa.pem" -T git@github.com
