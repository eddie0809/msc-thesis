# M. Sc. Thesis

Hello, this is the repository to my master's thesis entitled "Cross entropy
measures for detecting entanglement transitions". In this repository you will
find the raw `.tex` files before compilation with a build script and latexmkrc
file. Additionally, all figures are included as `.pdf` files (shame on me, I
know...). The file `msc-thesis.sty` is the style file that generates the
layout, which is a layout based on Niklas Liebermann's Master's Thesis at the
institute of theoretical phyiscs 1, University of Stuttgart (ITP1).

## File structure

The file structure is as follows:
```bash
.
├── bib/
│   └── msc.bib <- This is my zotero library exported to .bib with BetterBibTeX
├── build/
│   └── build files, not tracked by git
├── fig/
│   ├── Here are all the plots as .pdf files
│   ├── tikz/
│   │   └── Here are tikz figures as .tex files
│   └── Untitled.png <- friendly figure reminding me of whats missing
├── include/
│   ├── msc-thesis.sty <- layout file
│   ├── packages.tex <- packages
│   └── settings.tex <- settings
├── src/
│   └── Here are all the chapters as individual .tex files
├── .gitignore <- The reason you don't see the ./build/ directory here
├── build.sh <- shell script for compilation; ./build.sh new compiles from scratch
├── msc.pdf <- this is the output of running build.sh
├── msc.tex <- main .tex file that gets compiled, should only contain \input{.}
└── README.md <- The file you're looking at right now
```

## The layout

Maybe I'll someday put in the effort and properly set up the layout (possibly
towards PhD thesis or something), but for now if you want to use it, my
recommendation is to start with the newest version of a full TexLive
installation ([install guide](https://tug.org/texlive/quickinstall.html)),
clone this repository, write your contents in `src/`, change and personalize
some settings, and run `build.sh` on a bash compatible shell (I use zsh). This
is because the entire layout is spread sloppily around the files in `include/` 
(once again, I'll see if i can fix it).


### Troubleshooting

You're gonna need some fonts in your system fonts, so that latex can find them.
As main font, **EB Garamond** is used, which is a FOSS implementation of a
Garamond font. As Sans-Serif font, **Libertine** is used, and as Monospace or
Typewriter font I decided to use **Inconsolata**. Make sure you have those
fonts properly installed on your system.

## TikZ pictures

Haven't gotten around to externalizing with `tikzexternalize`. Will probably
not happen.
