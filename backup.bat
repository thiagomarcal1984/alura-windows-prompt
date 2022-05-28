echo off

cls 
echo Deseja fazer backup?
pause

echo Fazendo backup...

mkdir backup

xcopy /e /y .\Dicas .\backup

cd backup

echo Listando arquivos do backup...
dir

cd ..

echo on
