@echo off
title Limpando Dados Totais do Git
echo ===================================================
echo   LIMPANDO DADOS E PROJETOS DO GIT NESTE PC
echo ===================================================
echo.

:: --- CONFIGURAÇÃO: DEFINA A PASTA DOS SEUS PROJETOS AQUI ---
set "PASTA_PROJETOS=C:\Caminho\Para\A\Sua\Pasta\De\Projetos"

echo [1/4] Removendo credenciais guardadas no Windows...
cmdkey /delete:LegacyGeneric:target=git:https://github.com >nul 2>&1
cmdkey /delete:LegacyGeneric:target=git:https://gitlab.com >nul 2>&1
cmdkey /delete:Generic:target=git:https://github.com >nul 2>&1
cmdkey /delete:Generic:target=git:https://gitlab.com >nul 2>&1

echo [2/4] Limpando identidade global do Git...
git config --global --unset user.name >nul 2>&1
git config --global --unset user.email >nul 2>&1
git config --global --unset credential.helper >nul 2>&1
git credential-cache exit >nul 2>&1

echo [3/4] Limpando historico de comandos do prompt (doskey)...
doskey /reinstall >nul 2>&1

echo [4/4] Esvaziando a Reciclagem do Windows...
powershell -NoProfile -Command "Clear-RecycleBin -Force -ErrorAction SilentlyContinue" >nul 2>&1

echo.
echo ===================================================
echo   PROCESSO CONCLUIDO! 
echo   Credenciais, identidade e ficheiros apagados.
echo ===================================================
echo.
echo ===================================================
echo Testando se tem crendenciais ainda restantes
echo Nome:
git config --global user.name
echo Email:
git config --global user.email

echo .
echo Abrindo Gerenciador de Credenciais do Windows
control /name Microsoft.CredentialManager

pause
