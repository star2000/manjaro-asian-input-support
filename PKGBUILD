# Maintainer: Stefano Capitani <stefanoatmanjarodororg>
# Contributors: star2000 <i@star2000.work>

pkgbase=manjaro-asian-input-support
pkgname=('manjaro-asian-input-support-ibus' 'manjaro-asian-input-support-fcitx')
pkgver=2020.04
pkgrel=1
arch=('any')
url="https://gitlab.manjaro.org/packages/community/manjaro-asian-input-support"
license=('GPL')
source=('enable-ibus.sh' 'enable-fcitx.sh' 'ibus.desktop')
md5sums=('b974be25b7f91c392009cb8d9f1bd5b4'
         'fdbfae1bba8012daf984a76d7004ae3e'
         'f1a9f3406f8268383149889f4816cd52')
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
	conflicts=('manjaro-asian-input-support-gtk')
	replaces=('manjaro-asian-input-support-gtk')

	install -Dm644 "$srcdir/enable-ibus.sh" "$pkgdir/etc/profile.d/input-support.sh"
	install -Dm644 "$srcdir/ibus.desktop" "$pkgdir/etc/xdg/autostart/ibus.desktop"
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
	conflicts=('manjaro-asian-input-support-qt')
	replaces=('manjaro-asian-input-support-qt')

	install -Dm644 "$srcdir/enable-fcitx.sh" "$pkgdir/etc/profile.d/input-support.sh"
}
