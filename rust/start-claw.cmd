@echo off
REM Claw Code 启动脚本
REM 自动配置百炼平台 API 环境变量
REM 
REM 使用前请将下面的 API_KEY 替换为你自己的密钥
REM 或者删除下面两行，使用配置文件方式（~/.claw/settings.json）

set OPENAI_API_KEY=YOUR_API_KEY_HERE
set OPENAI_BASE_URL=https://dashscope.aliyuncs.com/compatible-mode/v1

echo 已配置百炼平台 API 环境变量
echo 模型: qwen3.6-plus
echo.

REM 获取脚本所在目录
set "SCRIPT_DIR=%~dp0"

REM 切换到脚本所在目录（项目根目录）
cd /d "%SCRIPT_DIR%"

REM 启动 claw（使用 release 版本）
target\release\claw.exe %*
