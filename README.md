Markdown eBook template for Windows
====================================

This project defines a skeleton repo for creating eBooks out of markdown and using [Pandoc](https://pandoc.org).  Pandoc is a great tool for converting markdown but the parameters may make it tricky for beginners. 

There is a short tutorial to [create EPUB files with Pandoc](http://pandoc.org/epub.html). Another repository by evangoer at https://github.com/evangoer/pandoc-ebook-template builds a makefile out to create the final book. While the former provides the basics, the latter is more easily managed on Linux/Mac.

This repository builds on top of the available information to make building books easier using Pandoc on Windows. I got rid of makefile since that introduces a dependency on downloading 'make', and use a batch file instead.


Install and Run
----------------

1. Install pandoc and dependencies.
   
   * [pandoc] (https://github.com/jgm/pandoc/releases). This is the utility to convert anything to everything.
   * [MikTeX](https://miktex.org/download) Latex library that helps pandoc convert markdown to PDF. Alternatively install HTML5 renderer library from [wkhtmltopdf] https://wkhtmltopdf.org/downloads.html)

2. Optionally install [Git](https://git-scm.com/download/win). This will make it easier to manage your markdown files. We don't quite need it for this example
   
3. Either clone this repository or download repository to your computer
   
4. Open command prompt, run generate.bat.
   This generates two formats of the sample book in a ```build``` directory. If you are using the Latex library, keep an eye for dependency installation prompted by MiKTex.


Replace Sample Content
-----------------------

1. Chapter files
   Remove below markdown files and replace them with your own files. Ideally these are chapters in your book but they can be anything.

   ```
   ch01.md
   ch02.md
   ```

3. Cover image
   Replace sample cover image ```cover.jpg``` with your own image (or delete file and modify ```generate.bat``` later)

4. metadata.xml
   Replace content in metadata.xml with your actual copyright statement, language, and any other Dublin Core metadata you wish to provide.

5. title.txt
   Replace the contents of title.txt file with the real manuscript title and author name.

6. stylesheet.css
   Basic styling is included here. You can leave this as-is, or change the content to suit your needs.


Batch file to generate eBook
----------------------------

* Change ```BOOKNAME``` to your book's file name.

* Change ``CHAPTERS`` to a space separated list of files (or chapters) that you want to include in the book. Provide them in the same order in which you want them to appear.

* Change ```COVER_IMAGE``` if you have renamed the cover file.
  If you don't want a cover image, delete this variable and the ```--epub-cover-image``` option in the EPUB target.

* (Optional) Change ``LATEX_CLASS``. The default of ``report`` handles multi-chapter books pretty well, and uses the same template for even and odd page numbers. However, you are free to substitute in any other LaTeX document class. For example, ``book`` provides a left-side/right-side template that is  suitable for print, and ``article`` is good for shorter manuscripts (short stories, technical briefs).



