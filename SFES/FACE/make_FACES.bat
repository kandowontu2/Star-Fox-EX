@echo off

@del FACE.cgx
@del FACE2.cgx
@del NEWFACE.cgx
@del NEWFACE2.cgx

@superfamiconv\superfamiconv.exe tiles -i FACE.png -p superfamiconv\mugs-transparent.pal --out-data FACE.CGX --bpp 4 --no-discard
@foxchr FACE.CGX

@superfamiconv\superfamiconv.exe tiles -i FACE2.png -p superfamiconv\mugs-transparent.pal --out-data FACE2.CGX --bpp 4 --no-discard
@foxchr FACE2.CGX

@superfamiconv\superfamiconv.exe tiles -i NEWFACE.png -p superfamiconv\mugs-transparent.pal --out-data NEWFACE.CGX --bpp 4 --no-discard
@foxchr NEWFACE.CGX

@superfamiconv\superfamiconv.exe tiles -i NEWFACE2.png -p superfamiconv\mugs-transparent.pal --out-data NEWFACE2.CGX --bpp 4 --no-discard
@foxchr NEWFACE2.CGX

@del FACE.cgx
@del FACE2.cgx
@del NEWFACE.cgx
@del NEWFACE2.cgx

@ren FACE-SCRAMBLED.cgx FACE.CGX
@ren FACE2-SCRAMBLED.cgx FACE2.CGX
@ren NEWFACE-SCRAMBLED.cgx NEWFACE.CGX
@ren NEWFACE2-SCRAMBLED.cgx NEWFACE2.CGX