@echo off

rem =================== INICIO ========================
rem Script com comandos básicos em Batch
rem ===================================================

rem ====== INTRODUÇÃO A COMANDOS BÁSICOS ===========
rem - echo       -> Imprime texto na tela
rem - echo.      -> Imprime uma linha em branco
rem - @echo off  -> Oculta os comandos exibindo só o resultado
rem - set        -> Cria ou mostra variáveis
rem - set /p     -> Recebe entrada do usuário
rem - if         -> Executa condicionalmente um bloco
rem - goto       -> Vai para uma parte específica do script
rem - pause      -> Pausa até o usuário pressionar uma tecla
rem - cls        -> Limpa a tela
rem - color      -> Muda a cor do terminal
rem - xcopy      -> Copia arquivos e pastas
rem - shutdown   -> Desliga ou reinicia o PC
rem - chkdsk     -> Verifica integridade do disco
rem - rd         -> Remove diretórios
rem - md         -> Cria diretórios
rem - del        -> Apaga arquivos
rem - start      -> Inicia programas
rem - control    -> Abre o Painel de Controle
rem ===================================================

rem Limpa a tela
cls

rem Ponto de ancoragem, volta pro inicio  
:menu

cls

rem Muda a cor do fundo e texto, da interface CLI
color 0a

rem Vai mostrar a data
date /t

rem Vai pular uma linha  
echo.

rem Variáveis do sistema
echo Computador: %computername%        Usuario: %username%

echo.
echo            MENU TAREFAS
echo.
echo  ==================================
echo * 1. Esvaziar a Lixeira            * 
echo * 2. Fazer Backup                  *
echo * 3. Escanear Disco Local          *
echo * 4. Abrir Word                    *
echo * 5. Sair                          * 
echo  ==================================

rem Declarar uma variavel chamada "opcao" e receber o valor que o usuario digitar 
set /p opcao= Escolha uma opcao: 
echo ------------------------------

rem Navegação por opções
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% GEQ 6 goto opcao6

rem Ponto de ancoragem 1 - Esvaziar Lixeira
:opcao1
cls
rem Apaga diretório da lixeira de forma silenciosa
rd /S /Q c:\$Recycle.bin
echo ==================================
echo *      Lixeira Esvaziada          *
echo ==================================
pause
goto menu

rem Ponto de ancoragem 2 - Fazer Backup
:opcao2
cls
rem Cria estrutura de backup (sem arquivos, apenas pastas)
rem xcopy /T /C C:\Users\crodr\Documents\. C:\Users\crodr\Desktop
echo ==================================
echo *      Backup concluido           *
echo ==================================
pause
goto menu

rem Ponto de ancoragem 3 - Escanear Disco
:opcao3
cls
echo ==================================
echo *     Escaneamento de disco       *
echo ==================================
chkdsk c:
pause
goto menu

rem Ponto de ancoragem 4 - Abrir Word
:opcao4
cls
rem Abre o Word (caso instalado e configurado no PATH)
rem start WINWORD.exe
pause
goto menu

rem Ponto de ancoragem 5 - Sair
:opcao5
cls
exit

rem Ponto de ancoragem 6 - Opção inválida
:opcao6
echo ==============================================
echo * Opcao Invalida! Escolha outra opcao do menu *
echo ==============================================
pause
goto menu

rem ======= EXTRAS OPCIONAIS - Desligamento =========
rem shutdown /s /t 5   → desliga o PC após 5 segundos
