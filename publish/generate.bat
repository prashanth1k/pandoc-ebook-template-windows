set PUB_DIR=%~dp0
set BUILD=%PUB_DIR%build\
set CONTENT_DIR=%PUB_DIR%..\

set TITLE=title.txt
set METADATA=metadata.xml
set TOC=--toc --toc-depth=2
set LATEX_CLASS=report
@REM Set LATEX_CLASS to article, report, book, memoir
set STYLESHEET=stylesheet.css

set COVER_IMAGE=cover.jpg

set BOOKNAME=the-greatest-eBook-ever
set CHAPTERS=ch01.md ch02.md

if exist %BUILD% rd /s /q %BUILD%
mkdir %BUILD%

cd %CONTENT_DIR%
pandoc -o %BUILD%%BOOKNAME%.epub %PUB_DIR%%TITLE% %CHAPTERS% %TOC% --epub-metadata=%PUB_DIR%%METADATA% --epub-cover-image=%PUB_DIR%%COVER_IMAGE%  --css=%PUB_DIR%stylesheet.css

@REM OPTION 1 for PDF: Use HTML5 rendering engine (wkhtmltopdf)
@REM pandoc -o %BUILD%%BOOKNAME%.pdf %PUB_DIR%%TITLE% %CHAPTERS% %TOC% -t html5 --standalone 

@REM OPTION 2 for PDF: Use LATEX Library
pandoc -o %BUILD%%BOOKNAME%.pdf %PUB_DIR%%TITLE% %CHAPTERS% %TOC% --standalone -t latex -V documentclass=%LATEX_CLASS%

cd %PUB_DIR%