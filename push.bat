::�رջ���
@echo off 

title �ύ�ű�

::cd "%~dp0"
echo %~dp0 
cd %~dp0 


::��������������ļ�����ĳ�ANSI
echo "�����������"

::��תĿ¼,��ִ�нű�
::cd D:\gitfile\supreme

echo --------------------------------------------
echo git add .
git add .

set year=%date:~0,4%
set "month=%date:~5,2%"
set "day=%date:~8,2%"
set "hour_ten=%time:~0,1%"
set "hour_one=%time:~1,1%"
set "hour=%time:~0,2%"
set "minute=%time:~3,2%"
set "second=%time:~6,2%"

::set commit_str=%year%-%month%-%day%T%hour_ten%%hour_one%:%minute%:%second%
set commit_str=%year%-%month%-%day%T%hour%:%minute%:%second%

::���ַ����еĿո��滻Ϊ0
set "commit_str=%commit_str: =0%"

echo --------------------------------------------
echo git pull
git pull

echo --------------------------------------------
echo git git commit
git commit -m '%commit_str%'

echo --------------------------------------------
echo git push
git push

pause