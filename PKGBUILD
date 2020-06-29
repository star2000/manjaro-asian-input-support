# Maintainer: Stefano Capitani <stefanoatmanjarodororg>
# Contributors: star2000 <i@star2000.work>

pkgbase=manjaro-asian-input-support
pkgname=(
	'manjaro-asian-input-support-fcitx'
	'manjaro-asian-input-support-fcitx5'
	'manjaro-asian-input-support-ibus'
)
pkgver=2020.06
pkgrel=1
arch=('any')
url="https://gitlab.manjaro.org/packages/community/manjaro-asian-input-support"
license=('GPL')
source=(
	'enable-fcitx.sh'
	'enable-ibus.sh'
	'fcitx5.desktop'
	'ibus.desktop'
)
md5sums=('fdbfae1bba8012daf984a76d7004ae3e'
         'b974be25b7f91c392009cb8d9f1bd5b4'
         '97a5be2b8ff8c0fc895d9ef21531e698'
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
	conflicts=(
		'manjaro-asian-input-support-fcitx'
		'manjaro-asian-input-support-fcitx5'
	)
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
	conflicts=(
		'manjaro-asian-input-support-fcitx5'
		'manjaro-asian-input-support-ibus'
	)
	replaces=('manjaro-asian-input-support-qt')

	install -Dm644 "$srcdir/enable-fcitx.sh" "$pkgdir/etc/profile.d/input-support.sh"
}

package_manjaro-asian-input-support-fcitx5() {
	pkgdesc='Manjaro asian input support for fcitx5'
	depends=(
		'fcitx5-qt'             # QT input module
		'fcitx5-gtk'            # GTK input module
		'fcitx5-chinese-addons' # Simplified Chinese
		'fcitx5-rime'           # Traditional Chinese
		'fcitx5-anthy'          # Japanese
		'fcitx5-hangul'         # Korean
		'fcitx5-unikey'         # Vietnamese
	)
	optdepends=(
		'kcm-fcitx5: KDE configuration module'
	)
	conflicts=(
		'manjaro-asian-input-support-fcitx'
		'manjaro-asian-input-support-ibus'
	)
	install -Dm644 "$srcdir/enable-fcitx.sh" "$pkgdir/etc/profile.d/input-support.sh"
	install -Dm644 "$srcdir/fcitx5.desktop" "$pkgdir/etc/xdg/autostart/fcitx5.desktop"
}
