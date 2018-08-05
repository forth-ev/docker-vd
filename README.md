# Docker VD
## Typesetting the *Vierte Dimension* Forth-Magazine

This a Docker setup for typesetting the [Vierte Dimension](https://wiki.forth-ev.de/doku.php/vd-archiv) magazine of [Forth Gesellschaft eV](https://www.forth-ev.de).
It includes

- TeX-Live
- Make
- LyX
- PDF-Previewer (mupdf)

Use the shell script `vd` to access the docker image. 

---

## Clone magazine repository for issue JJJJ-0x with fossil

    mkdir VierteDimension-JJJJ-0x
    cd VierteDimension-JJJJ-0x

    vd fossil clone https://$USER@fossil.forth-ev.de/vd-JJJJ-0x vd-JJJJ-0x.fossil

    vd fossil open vd-JJJJ-0x.fossil

## Fossil commands on the repository

e.g.

    vd fossil status

also check in, commit, push, update

## Typeset magazine

    vd make
    
## Preview magazine

    vd mupdf 4dJJJJ-0x.pdf

Requires X-Server running on host.

## Run LyX for interactive editing LyX-Files

    vd lyx [filename]
    
Requires X-Server running on host.

---

### How to use

1. Clone this repository `git clone https://github.com/forth-ev/docker-vd.git`.
2. Add the `vd` - script to your PATH.
3. You're done.

### Build the docker image yourself

- Run the `build` command.