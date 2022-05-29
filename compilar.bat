@echo off

@REM Dica obtida de https://stackoverflow.com/questions/6623161/javac-option-to-compile-all-java-files-under-a-given-directory-recursively

@REM Listar todos os arquivos de código fonte do Java.
dir /s /B *.java > sources.txt

@REM Compilar cada um dos arquivos obtidos da listagem e remoção da listagem.
javac @sources.txt -d classes
del sources.txt

@REM Execução do método principal a partir da pasta recém-criada classes.
cd classes
java br.com.teste.Teste

@REM Remoção dos bytecodes compilados.
cd ..
rmdir /s/q classes
