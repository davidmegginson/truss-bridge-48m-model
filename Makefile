FG_SCENERY=${HOME}/.local/share/scenery/local-scenery-mods

FILES=truss-span-48m.ac \
  truss-span-48m.xml \
  truss-span-48m1.png \
  truss-span-48m2.png

install: ${FILES}
	cp ${FILES} ${FG_SCENERY}/Models/Miscellaneous

view: install
	fgfs --disable-sound --aircraft=ufo --timeofday=morning --lat=45.41403878 --lon=-75.72888884 --altitude=250 --heading=112

view-dusk: install
	fgfs --disable-sound --aircraft=ufo --timeofday=dusk --lat=45.41403878 --lon=-75.72888884 --altitude=250 --heading=112
