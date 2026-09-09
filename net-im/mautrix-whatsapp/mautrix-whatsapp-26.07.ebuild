# Copyright 2022-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit go-module optfeature systemd

EGO_SUM=(
        "filippo.io/edwards25519 v1.2.0"
        "filippo.io/edwards25519 v1.2.0/go.mod"
        "github.com/DATA-DOG/go-sqlmock v1.5.2"
        "github.com/DATA-DOG/go-sqlmock v1.5.2/go.mod"
        "github.com/agnivade/levenshtein v1.2.1"
        "github.com/agnivade/levenshtein v1.2.1/go.mod"
        "github.com/andreyvit/diff v0.0.0-20170406064948-c7f18ee00883"
        "github.com/andreyvit/diff v0.0.0-20170406064948-c7f18ee00883/go.mod"
        "github.com/beeper/argo-go v1.1.2"
        "github.com/beeper/argo-go v1.1.2/go.mod"
        "github.com/coder/websocket v1.8.15"
        "github.com/coder/websocket v1.8.15/go.mod"
        "github.com/coreos/go-systemd/v22 v22.7.0"
        "github.com/coreos/go-systemd/v22 v22.7.0/go.mod"
        "github.com/creack/pty v1.1.9/go.mod"
        "github.com/davecgh/go-spew v1.1.1"
        "github.com/davecgh/go-spew v1.1.1/go.mod"
        "github.com/elliotchance/orderedmap/v3 v3.1.0"
        "github.com/elliotchance/orderedmap/v3 v3.1.0/go.mod"
        "github.com/google/go-cmp v0.7.0"
        "github.com/google/go-cmp v0.7.0/go.mod"
        "github.com/google/uuid v1.6.0"
        "github.com/google/uuid v1.6.0/go.mod"
        "github.com/kr/pretty v0.2.1/go.mod"
        "github.com/kr/pretty v0.3.1"
        "github.com/kr/pretty v0.3.1/go.mod"
        "github.com/kr/pty v1.1.1/go.mod"
        "github.com/kr/text v0.1.0/go.mod"
        "github.com/kr/text v0.2.0"
        "github.com/kr/text v0.2.0/go.mod"
        "github.com/lib/pq v1.12.3"
        "github.com/lib/pq v1.12.3/go.mod"
        "github.com/mattn/go-colorable v0.1.14"
        "github.com/mattn/go-colorable v0.1.14/go.mod"
        "github.com/mattn/go-isatty v0.0.20"
        "github.com/mattn/go-isatty v0.0.20/go.mod"
        "github.com/mattn/go-sqlite3 v1.14.48"
        "github.com/mattn/go-sqlite3 v1.14.48/go.mod"
        "github.com/petermattis/goid v0.0.0-20260713124913-97594f28f5ca"
        "github.com/petermattis/goid v0.0.0-20260713124913-97594f28f5ca/go.mod"
        "github.com/pkg/diff v0.0.0-20210226163009-20ebb0f2a09e/go.mod"
        "github.com/pmezard/go-difflib v1.0.0"
        "github.com/pmezard/go-difflib v1.0.0/go.mod"
        "github.com/rogpeppe/go-internal v1.9.0/go.mod"
        "github.com/rogpeppe/go-internal v1.10.0"
        "github.com/rogpeppe/go-internal v1.10.0/go.mod"
        "github.com/rs/xid v1.6.0"
        "github.com/rs/xid v1.6.0/go.mod"
        "github.com/rs/zerolog v1.35.1"
        "github.com/rs/zerolog v1.35.1/go.mod"
        "github.com/sergi/go-diff v1.3.1"
        "github.com/sergi/go-diff v1.3.1/go.mod"
        "github.com/skip2/go-qrcode v0.0.0-20200617195104-da1b6568686e"
        "github.com/skip2/go-qrcode v0.0.0-20200617195104-da1b6568686e/go.mod"
        "github.com/stretchr/testify v1.11.1"
        "github.com/stretchr/testify v1.11.1/go.mod"
        "github.com/tidwall/gjson v1.14.2/go.mod"
        "github.com/tidwall/gjson v1.19.0"
        "github.com/tidwall/gjson v1.19.0/go.mod"
        "github.com/tidwall/match v1.1.1/go.mod"
        "github.com/tidwall/match v1.2.0"
        "github.com/tidwall/match v1.2.0/go.mod"
        "github.com/tidwall/pretty v1.2.0/go.mod"
        "github.com/tidwall/pretty v1.2.1"
        "github.com/tidwall/pretty v1.2.1/go.mod"
        "github.com/tidwall/sjson v1.2.5"
        "github.com/tidwall/sjson v1.2.5/go.mod"
        "github.com/vektah/gqlparser/v2 v2.5.27"
        "github.com/vektah/gqlparser/v2 v2.5.27/go.mod"
        "github.com/yuin/goldmark v1.8.4"
        "github.com/yuin/goldmark v1.8.4/go.mod"
        "go.mau.fi/libsignal v0.2.2"
        "go.mau.fi/libsignal v0.2.2/go.mod"
        "go.mau.fi/util v0.9.11"
        "go.mau.fi/util v0.9.11/go.mod"
        "go.mau.fi/webp v0.3.0"
        "go.mau.fi/webp v0.3.0/go.mod"
        "go.mau.fi/whatsmeow v0.0.0-20260716095330-85d99080dee8"
        "go.mau.fi/whatsmeow v0.0.0-20260716095330-85d99080dee8/go.mod"
        "go.mau.fi/zeroconfig v0.2.0"
        "go.mau.fi/zeroconfig v0.2.0/go.mod"
        "golang.org/x/crypto v0.54.0"
        "golang.org/x/crypto v0.54.0/go.mod"
        "golang.org/x/exp v0.0.0-20260709172345-9ea1abe57597"
        "golang.org/x/exp v0.0.0-20260709172345-9ea1abe57597/go.mod"
        "golang.org/x/image v0.44.0"
        "golang.org/x/image v0.44.0/go.mod"
        "golang.org/x/mod v0.38.0"
        "golang.org/x/mod v0.38.0/go.mod"
        "golang.org/x/net v0.57.0"
        "golang.org/x/net v0.57.0/go.mod"
        "golang.org/x/sync v0.22.0"
        "golang.org/x/sync v0.22.0/go.mod"
        "golang.org/x/sys v0.6.0/go.mod"
        "golang.org/x/sys v0.47.0"
        "golang.org/x/sys v0.47.0/go.mod"
        "golang.org/x/text v0.40.0"
        "golang.org/x/text v0.40.0/go.mod"
        "google.golang.org/protobuf v1.36.11"
        "google.golang.org/protobuf v1.36.11/go.mod"
        "gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod"
        "gopkg.in/check.v1 v1.0.0-20201130134442-10cb98267c6c"
        "gopkg.in/check.v1 v1.0.0-20201130134442-10cb98267c6c/go.mod"
        "gopkg.in/natefinch/lumberjack.v2 v2.2.1"
        "gopkg.in/natefinch/lumberjack.v2 v2.2.1/go.mod"
        "gopkg.in/yaml.v3 v3.0.1"
        "gopkg.in/yaml.v3 v3.0.1/go.mod"
        "maunium.net/go/mauflag v1.0.0"
        "maunium.net/go/mauflag v1.0.0/go.mod"
        "maunium.net/go/mautrix v0.29.0"
        "maunium.net/go/mautrix v0.29.0/go.mod"
        )
go-module_set_globals

MY_PV=0.${PV/./}.0

DESCRIPTION="A Matrix-WhatsApp puppeting bridge "
HOMEPAGE="https://github.com/mautrix/whatsapp/"
SRC_URI="https://github.com/mautrix/whatsapp/archive/v${MY_PV}.tar.gz -> ${P}.gh.tar.gz
	${EGO_SUM_SRC_URI}"
S="${WORKDIR}/whatsapp-${MY_PV}"

LICENSE="AGPL-3 GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="crypt"

DEPEND="crypt? ( dev-libs/olm )"

RDEPEND="
	${DEPEND}
	acct-user/${PN}
"

BDEPEND=">=dev-lang/go-1.25"

src_compile() {
	ego build ./cmd/mautrix-whatsapp $(use crypt || echo '-tags nocrypto')
}

src_install() {
	dobin "${PN}"

	keepdir /var/log/mautrix/${PN/mautrix-/}
	fowners -R root:mautrix /var/log/mautrix
	fperms -R 770 /var/log/mautrix

	(
		echo -e '# Network-specific config options\nnetwork:'
		sed 's/^/    /' pkg/connector/example-config.yaml || die
		cat ../go-mod/maunium.net/go/mautrix@v0.29.0/bridgev2/matrix/mxmain/example-config.yaml || die
	) |
	sed "s_\./logs/bridge\.log_/var/log/mautrix/whatsapp/mautrix-whatsapp.log_" > "${PN/-/_}.yaml" || die

	insinto "/etc/mautrix"
	doins "${PN/-/_}.yaml"

	newinitd "${FILESDIR}/${PN}.initd" "${PN}"
	systemd_dounit "${FILESDIR}/${PN}.service"

	fowners -R root:mautrix /etc/mautrix
	fperms -R 770 /etc/mautrix
}

pkg_postinst() {
	optfeature "sending GIFs" media-video/ffmpeg

	elog "Before you can use ${PN}, you must configure it correctly"
	elog "The configuration file is located at \"/etc/mautrix/${PN/-/_}.yaml\""
	elog "When done, run the following command: emerge --config ${CATEGORY}/${PN}"
	elog "Then, you must register the bridge with your homeserver"
	elog "Refer your homeserver's documentation for instructions"
	elog "The registration file is located at /var/lib/${PN/-/\/}/registration.yaml"
	elog "Finally, you may start the ${PN} daemon"
}

pkg_config() {
	su - "${PN}" -s /bin/sh -c \
		"/usr/bin/${PN} -c /etc/mautrix/${PN/-/_}.yaml -g -r /var/lib/${PN/-/\/}/registration.yaml"
}
