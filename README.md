# TU Delft - Unofficial Report Template (v1.2)
This template aims to simplify and improve the (Xe)LaTeX template provided by the TU Delft. Major changes are a redesigned cover page and a rewritten class file for easier customization. This template is made with Aerospace Engineering in mind (i.e. the included .bib entries and images are aerospace related), but it can be used universally.

## Cover

Six high quality cover images related to Aerospace Engineering have been included in this template. Please make sure to appropriately credit the cover page if you decide to use one of them. A preview can be seen below. A list with the attributions and recommended title color can be found below, in order of appearance in the preview. The images can be found under `/layout/covers`.

<p align="center">
  <img align="centre"  src="https://github.com/dzwaneveld/TU-Delft-Unofficial-Report-Template/blob/master/layout/covers/covers.jpg" alt="" width="500" />
</p>

| File | Attribution | Source |
|------|---------|------|
| `cover1.jpg` | Storm Cell Over the Southern Appalachian Mountains by NASA/Stu Broce under CC BY 2.0 | [Link](https://www.flickr.com/photos/gsfc/14279896838) | 
| `cover2.jpg` | Canadarm 2 Robotic Arm Grapples SpaceX Dragon by NASA under CC BY-NC 2.0 // Modified | [Link](https://www.flickr.com/photos/nasa2explore/26298228022) | 
| `cover3.jpg` | City Lights of Africa, Europe, and the Middle East by NASA Earth Observatory under CC BY 2.0 | [Link](https://www.flickr.com/photos/gsfc/8247962102) | 
| `cover4.jpg` | Royal Air Force Voyager Transport Tanker Aircraft by Ministry of Defense/Cpl Ashley Keates under OGL v1.0 | [Link](https://commons.wikimedia.org/wiki/File:Royal_Air_Force_Voyager_at_Mount_Pleasant.jpg) | 
| `cover5.jpg` | Aircraft Flying in the Sunset by Gerhard Gellinger | [Link](https://pixabay.com/photos/travel-flying-aircraft-sky-sunset-1756152/) | 
| `cover6.jpg` | F18 at Bodo Air Base Norway by Ministerio de Defensa España under CC BY-NC 2.0 | [Link](https://www.flickr.com/photos/ejercitoaire/45748097871/) | 

## Changelog 

| Version | Notable Changes | 
|---------|-----------------|
| 1.0     | Rewritten class file to improve readability and simplify modifications |
|         | Redesigned the cover page |
| 1.1     | Minor adjustments to the class file |
|         | Removed Natbib in favor of BibLaTeX. Adds more database entry types (e.g. @online) and other minor improvements. If you are using old websites entries, it is recommended to convert them, but it will work nonetheless. For a BibLaTeX cheat sheet, see http://tug.ctan.org/info/biblatex-cheatsheet/biblatex-cheatsheet.pdf |
|         | Changed the font to Arial to be more in line with the TU Delft corporate design (see https://www.tudelft.nl/en/tu-delft-corporate-design/)  |
|         | Added *booktabs* to improve customisability of tables (e.g. \\toprule, \\midrule, \\bottomrule) |
|         | Fixed and added more book entries from 2nd year courses |
|         | Converted the nomenclature tables to longtables which will break automatically over the page |
|         | Added *xspace*, which automatically selects the appropriate spacing after the \\deg macro |
| 1.2     | Minor adjustments to the class file |
|         | Added more cover images. A detailed list with all attributions can be found under *Cover*. All images can be used and distributed freely if appropriate credit is given (all use a CC BY 2.0 license or similar) |
