@echo off
SET PROJETO=projeto
SET ARQUIVO=projeto.war
SET PATH=%PATH%;%JAVA_HOME%\bin

@REM dir /s /B src | find "\.java$" > sources.txt
dir /s /B src\java\*.java > sources.txt


dir /s /B %CATALINA_HOME%\lib > libs.txt

javac @sources.txt -d %PROJETO%\WEB-INF\classes -cp D:\apache-tomcat-9.0.63-replica\lib\annotations-api.jar;D:\apache-tomcat-9.0.63-replica\lib\catalina-ant.jar;D:\apache-tomcat-9.0.63-replica\lib\catalina-ha.jar;D:\apache-tomcat-9.0.63-replica\lib\catalina-ssi.jar;D:\apache-tomcat-9.0.63-replica\lib\catalina-storeconfig.jar;D:\apache-tomcat-9.0.63-replica\lib\catalina-tribes.jar;D:\apache-tomcat-9.0.63-replica\lib\catalina.jar;D:\apache-tomcat-9.0.63-replica\lib\ecj-4.20.jar;D:\apache-tomcat-9.0.63-replica\lib\el-api.jar;D:\apache-tomcat-9.0.63-replica\lib\jasper-el.jar;D:\apache-tomcat-9.0.63-replica\lib\jasper.jar;D:\apache-tomcat-9.0.63-replica\lib\jaspic-api.jar;D:\apache-tomcat-9.0.63-replica\lib\jsp-api.jar;D:\apache-tomcat-9.0.63-replica\lib\servlet-api.jar;D:\apache-tomcat-9.0.63-replica\lib\tomcat-api.jar;D:\apache-tomcat-9.0.63-replica\lib\tomcat-coyote.jar;D:\apache-tomcat-9.0.63-replica\lib\tomcat-dbcp.jar;D:\apache-tomcat-9.0.63-replica\lib\tomcat-i18n-cs.jar;D:\apache-tomcat-9.0.63-replica\lib\tomcat-i18n-de.jar;D:\apache-tomcat-9.0.63-replica\lib\tomcat-i18n-es.jar;D:\apache-tomcat-9.0.63-replica\lib\tomcat-i18n-fr.jar;D:\apache-tomcat-9.0.63-replica\lib\tomcat-i18n-ja.jar;D:\apache-tomcat-9.0.63-replica\lib\tomcat-i18n-ko.jar;D:\apache-tomcat-9.0.63-replica\lib\tomcat-i18n-pt-BR.jar;D:\apache-tomcat-9.0.63-replica\lib\tomcat-i18n-ru.jar;D:\apache-tomcat-9.0.63-replica\lib\tomcat-i18n-zh-CN.jar;D:\apache-tomcat-9.0.63-replica\lib\tomcat-jdbc.jar;D:\apache-tomcat-9.0.63-replica\lib\tomcat-jni.jar;D:\apache-tomcat-9.0.63-replica\lib\tomcat-util-scan.jar;D:\apache-tomcat-9.0.63-replica\lib\tomcat-util.jar;D:\apache-tomcat-9.0.63-replica\lib\tomcat-websocket.jar;D:\apache-tomcat-9.0.63-replica\lib\websocket-api.jar
@REM javac @sources.txt -d classes -cp libs.txt

cd %PROJETO%

copy ..\src\web\* .
jar cf %ARQUIVO% .\*

copy %ARQUIVO% %CATALINA_HOME%\webapps

cd ..

rmdir /s /q %PROJETO%

del sources.txt
del libs.txt
