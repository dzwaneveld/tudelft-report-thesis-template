# LaTeX × TU Delft - Report/Thesis Template

This template aims to simplify and improve the (Xe)LaTeX report/thesis template by Delft University of Technology with the following three main design principles:

* **Simplicity First:** A class file that has been reduced by nearly 70% to simplify customization;
* **Effortless:** A careful selection of common packages to get started immediately;
* **Complete:** Ready-to-go when it comes to the document and file structure.

This template works with _pdfLaTeX_, _XeLaTeX_ and _LuaLaTeX_. In order to adhere to the TU Delft house style, either _XeLaTeX_ or _LuaLaTeX_ is required, as it supports TrueType and OpenType fonts. _BibLaTeX_ is used for the bibliography with as backend _biber_. Please visit https://dzwaneveld.github.io/report/ for the full documentation.

Cover | Title | Chapter
--- | --- | ---
<img src="https://dzwaneveld.github.io/images/report-template.jpg"> | <img src="https://dzwaneveld.github.io/images/report-template-title.jpg"> | <img src="https://dzwaneveld.github.io/images/report-template-chapter.jpg">

## Documentation (Abridged)

As a report/thesis is generally a substantial document, the chapters and appendices have been separated into different files and folders for convenience. The folders are based on the three parts in the document: the frontmatter, mainmatter and appendix. All files are inserted in the main file, `report.tex`, using the `\input{filename}` command. The document class, which can be found in `tudelft-report.cls`, is based on the `book` class.

The template will automatically generate a cover when the `\makecover` command is used. The title, subtitle and author will also be present on the title page. To give greater flexibility over the title page, the layout is specified in `title-report.tex`. A title page for theses is also available: `title-thesis.tex`. Change the corresponding `\input{...}` command in the main file to switch. 

The bibliography has been set up in `report.tex` to allow for easy customization. It is included in the table of contents and renamed to 'References' using the `heading=bibintoc` and `title=References` options of the `\printbibliography` command respectively. If you would like to use a different `.bib` file, change the command `\addbibresource{report.bib}` accordingly. 

*→ Visit https://dzwaneveld.github.io/report/ for the full documentation.*

## License

This [report/thesis template](https://github.com/dzwaneveld/TU-Delft-Unofficial-Report-Template) by Daan Zwaneveld is licensed under [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/). No attribution is required in PDF outputs created using this template.
