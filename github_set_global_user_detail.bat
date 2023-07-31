:: =============================================================================
:: Github Tools: Set User Details Scrtips for Windwos Command Prompt
::
:: @filename  github_set_global_user_detail.bat
:: @author	Ken Chang (keoinn@gmail.com)
:: @copyright	Copyright (C) 2023 by W. Y. Chang, YavikTech. All rights reserved.
:: @license	http://opensource.org/licenses/MIT	MIT License
:: @link	
:: @since	Version 1.0.0
:: @filesource
:: =============================================================================
@echo off
chcp 65001

:: Git 使用者名稱
set user_name=Ken Chang
:: Git 使用者信箱
set user_email=keoinn@gmail.com

git config --global user.name "%user_name%"
git config --global user.email "%user_email%"

echo 設定 User Details 完成
pause