$pdf_mode = 4; # Use LuaLaTeX
$lualatex = 'lualatex -synctex=1 -shell-escape -file-line-error -interaction=nonstopmode %O %S';
$biber = 'biber %O %S';
$pdf_previewer = 'zathura';
