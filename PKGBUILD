# Maintainer: Stefano Capitani <stefanoatmanjarodororg>
# Contributors: star2000 <i@star2000.work>

pkgbase=manjaro-asian-input-support
pkgname=(
	"$pkgbase-fcitx"
	"$pkgbase-fcitx5"
	"$pkgbase-ibus"
)
pkgver=2020.07
pkgrel=2
arch=('any')
url="https://gitlab.manjaro.org/packages/community/manjaro-asian-input-support"
license=('GPL')
source=(
	'enable-fcitx.sh'
	'enable-ibus.sh'
	'fcitx5.desktop'
	'fcitx5.profile'
	'ibus.desktop'
)
md5sums=('fdbfae1bba8012daf984a76d7004ae3e'
	'b974be25b7f91c392009cb8d9f1bd5b4'
	'97a5be2b8ff8c0fc895d9ef21531e698'
	'3578677a7102c9f8be3b9f7ea7d3d06f'
	'f1a9f3406f8268383149889f4816cd52')
install=input-support.install

pkgver() {
	date +%Y.%m
}

package_manjaro-asian-input-support-ibus() {
	pkgdesc='Manjaro asian input support for ibus'
	optdepends=(
		'ibus-libpinyin: 中文 | Chinese'
		'ibus-anthy: 日本語 | Japanese'
		'ibus-hangul: 한국어 | Korean'
		'ibus-unikey: Tiếng Việt | Vietnamese'
		'ibus-m17n: other languages provided by M17n(http://www.nongnu.org/m17n/)'
	)
	conflicts=(
		"$pkgbase-fcitx"
		"$pkgbase-fcitx5"
	)
	install -Dm644 "$srcdir/enable-ibus.sh" "$pkgdir/etc/profile.d/input-support.sh"
	install -Dm644 "$srcdir/ibus.desktop" "$pkgdir/etc/xdg/autostart/ibus.desktop"
}

package_manjaro-asian-input-support-fcitx() {
	pkgdesc='Manjaro asian input support for fcitx'
	depends=(
		'fcitx-qt5'        # QT input module
		'fcitx-configtool' # gui configuration tool
	)
	optdepends=(
		'kcm-fcitx: KDE configuration module'
		'fcitx-googlepinyin: 中文 | Chinese'
		'fcitx-cloudpinyin: 云拼音 | Use internet resources to provide candidate input for Chinese'
		'fcitx-mozc: 日本語 | Japanese'
		'fcitx-hangul: 한국어 | Korean'
		'fcitx-unikey: Tiếng Việt | Vietnamese'
		'fcitx-sayura: සිංහල | Sinhalese'
		'fcitx-m17n: other languages provided by M17n(http://www.nongnu.org/m17n/)'
	)
	conflicts=(
		"$pkgbase-fcitx5"
		"$pkgbase-ibus"
	)
	install -Dm644 "$srcdir/enable-fcitx.sh" "$pkgdir/etc/profile.d/input-support.sh"
}

package_manjaro-asian-input-support-fcitx5() {
	pkgdesc='Manjaro asian input support for fcitx5'
	depends=(
		'fcitx5-qt'  # QT input module
		'fcitx5-gtk' # GTK input module
	)
	optdepends=(
		'kcm-fcitx5: KDE configuration module'
		'fcitx5-chinese-addons: 简体中文 | Simplified Chinese'
		'fcitx5-rime: 繁體中文 | Traditional Chinese'
		'fcitx5-anthy: 日本語 | Japanese'
		'fcitx5-hangul: 한국어 | Korean'
		'fcitx5-unikey: Tiếng Việt | Vietnamese'
	)
	conflicts=(
		"$pkgbase-fcitx"
		"$pkgbase-ibus"
	)
	install -Dm644 "$srcdir/enable-fcitx.sh" "$pkgdir/etc/profile.d/input-support.sh"
	install -Dm644 "$srcdir/fcitx5.desktop" "$pkgdir/etc/xdg/autostart/fcitx5.desktop"
	install -Dm644 "$srcdir/fcitx5.profile" "$pkgdir/etc/xdg/fcitx5/profile"
}
