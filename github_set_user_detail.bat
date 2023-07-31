:: =============================================================================
:: Github Tools: Set User Details Scrtips for Windwos Command Prompt
::
:: @filename  set_git_user_detail.bat
:: @author	Ken Chang (keoinn@gmail.com)
:: @copyright	Copyright (C) 2023 by W. Y. Chang, YavikTech. All rights reserved.
:: @license	http://opensource.org/licenses/MIT	MIT License
:: @link	
:: @since	Version 1.0.0
:: @filesource
:: =============================================================================
@echo off
chcp 65001

set user_name=Ken Chang
set user_email=keoinn@gmail.com

git config user.name "%user_name%"
git config user.email "%user_email%"

echo 設定 User Details 完成
pause