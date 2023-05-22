# Makefile that converts all PNGs to sixels
# Because sixels are awesome

CONVERT  = convert
GEOMETRY = 320x320
CVTFLAGS = -geometry ${GEOMETRY} sixel:-

SIXELS = virbos-transparent.sixel virbos-black.sixel virbos-black-filled.sixel virbos-banner.sixel virbox.sixel

all: ${SIXELS}

virbos-transparent.sixel:
	${CONVERT} $(subst sixel,png,$@) ${CVTFLAGS} >$@
virbos-black.sixel:
	${CONVERT} $(subst sixel,png,$@) ${CVTFLAGS} >$@
virbos-black-filled.sixel:
	${CONVERT} $(subst sixel,png,$@) ${CVTFLAGS} >$@
virbos-banner.sixel:
	${CONVERT} $(subst sixel,png,$@) ${CVTFLAGS} >$@
virbox.sixel:
	${CONVERT} $(subst sixel,png,$@) ${CVTFLAGS} >$@

clean:
	rm -f ${SIXELS}

getsixels:
	@printf "${SIXELS}\n"

.PHONY: all clean getsixels
