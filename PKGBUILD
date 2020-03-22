# Maintainer: Stefano Capitani <stefanoatmanjarodororg>
# Contributors: star2000 <i@star2000.work>

pkgbase=manjaro-asian-input-support
pkgname=('manjaro-asian-input-support-ibus' 'manjaro-asian-input-support-fcitx')
pkgver=2020.03
pkgrel=2
arch=('any')
url="https://gitlab.manjaro.org/packages/community/manjaro-asian-input-support"
license=('GPL')
source=('enable-ibus.sh' 'enable-fcitx.sh')
md5sums=('a10043017c917ec80060c3ad71232de8'
         '6daada59c6fe8077e1640aec08a85b0c')
install=input-support.install

pkgver() {
	date +%Y.%m
}

package_manjaro-asian-input-support-ibus() {
	pkgdesc='Manjaro asian input support for ibus'
	depends=(
		'ibus-libpinyin' # Chinese input method engine
		'ibus-anthy'     # Japanese input method engine
		'ibus-hangul'    # Korean input method engine
		'ibus-unikey'    # Vietnamese input method engine
		'ibus-m17n'      # other languages provided by M17n(http://www.nongnu.org/m17n/)
	)
	conflicts=('package_manjaro-asian-input-support-gtk')
	replaces=('package_manjaro-asian-input-support-gtk')

	install -Dm644 "$srcdir/enable-ibus.sh" "$pkgdir/etc/profile.d/input-support.sh"
}

package_manjaro-asian-input-support-fcitx() {
	pkgdesc='Manjaro asian input support for fcitx'
	depends=(
		'fcitx-qt5'          # QT input module
		'fcitx-gtk3'         # GTK input module
		'fcitx-configtool'   # gui configuration tool
		'fcitx-googlepinyin' # Chinese input method engine
		'fcitx-cloudpinyin'  # Use internet resources to provide candidate input for Chinese
		'fcitx-mozc'         # Japanese input method engine
		'fcitx-hangul'       # Korean input method engine
		'fcitx-unikey'       # Vietnamese input method engine
		'fcitx-sayura'       # Sinhalese input method engine
		'fcitx-m17n'         # other languages provided by M17n(http://www.nongnu.org/m17n/)
	)
	optdepends=('kcm-fcitx: KDE configuration module')
	conflicts=('package_manjaro-asian-input-support-qt')
	replaces=('package_manjaro-asian-input-support-qt')

	install -Dm644 "$srcdir/enable-fcitx.sh" "$pkgdir/etc/profile.d/input-support.sh"
}
