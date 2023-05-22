# Maintainer: Jeremy Baxter <jtbx@disroot.org>

pkgname=virbos-logos
pkgver=1
pkgrel=1
pkgdesc="Logos and branding for Virbos"
arch=("any")
url="https://github.com/Virbos/logos"
license=("GPL")
makedepends=("make" "imagemagick")
source=("logos::git+https://github.com/Virbos/logos.git")
sha256sums=("SKIP")

build() {
	pushd logos
	make
	popd
}

package() {
	pushd logos
	mkdir -p "${pkgdir}"/usr/share/virbos/logos/sixel
	cp -f virbos-*.png virbox.png "${pkgdir}"/usr/share/virbos/logos
	cp -f $(make getsixels) "${pkgdir}"/usr/share/virbos/logos/sixel
	popd
}
