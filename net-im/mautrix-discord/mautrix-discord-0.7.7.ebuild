# Copyright 2022-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

EGO_SUM=(
	"github.com/DATA-DOG/go-sqlmock v1.5.0"
	"github.com/DATA-DOG/go-sqlmock v1.5.0/go.mod"
	"github.com/andybalholm/brotli v1.2.2"
	"github.com/andybalholm/brotli v1.2.2/go.mod"
	"github.com/beeper/discordgo v0.0.0-20260808090638-8051e14a4471"
	"github.com/beeper/discordgo v0.0.0-20260808090638-8051e14a4471/go.mod"
	"github.com/beeper/req/v3 v3.0.0-20260808092221-1540c0bf3d1a"
	"github.com/beeper/req/v3 v3.0.0-20260808092221-1540c0bf3d1a/go.mod"
	"github.com/coder/websocket v1.8.14"
	"github.com/coder/websocket v1.8.14/go.mod"
	"github.com/coreos/go-systemd/v22 v22.7.0"
	"github.com/coreos/go-systemd/v22 v22.7.0/go.mod"
	"github.com/davecgh/go-spew v1.1.1"
	"github.com/davecgh/go-spew v1.1.1/go.mod"
	"github.com/gabriel-vasile/mimetype v1.4.15"
	"github.com/gabriel-vasile/mimetype v1.4.15/go.mod"
	"github.com/google/go-cmp v0.6.0/go.mod"
	"github.com/google/go-cmp v0.7.0"
	"github.com/google/go-cmp v0.7.0/go.mod"
	"github.com/google/go-querystring v1.2.0"
	"github.com/google/go-querystring v1.2.0/go.mod"
	"github.com/google/shlex v0.0.0-20191202100458-e7afc7fbc510"
	"github.com/google/shlex v0.0.0-20191202100458-e7afc7fbc510/go.mod"
	"github.com/google/uuid v1.6.0"
	"github.com/google/uuid v1.6.0/go.mod"
	"github.com/gorilla/mux v1.8.0"
	"github.com/gorilla/mux v1.8.0/go.mod"
	"github.com/gorilla/websocket v1.5.0"
	"github.com/gorilla/websocket v1.5.0/go.mod"
	"github.com/icholy/digest v1.2.0"
	"github.com/icholy/digest v1.2.0/go.mod"
	"github.com/klauspost/compress v1.19.2"
	"github.com/klauspost/compress v1.19.2/go.mod"
	"github.com/kr/pretty v0.3.1"
	"github.com/kr/pretty v0.3.1/go.mod"
	"github.com/kr/pty v1.1.1/go.mod"
	"github.com/kr/text v0.1.0"
	"github.com/kr/text v0.1.0/go.mod"
	"github.com/lib/pq v1.12.3"
	"github.com/lib/pq v1.12.3/go.mod"
	"github.com/mattn/go-colorable v0.1.14"
	"github.com/mattn/go-colorable v0.1.14/go.mod"
	"github.com/mattn/go-isatty v0.0.20"
	"github.com/mattn/go-isatty v0.0.20/go.mod"
	"github.com/mattn/go-sqlite3 v1.14.49"
	"github.com/mattn/go-sqlite3 v1.14.49/go.mod"
	"github.com/pmezard/go-difflib v1.0.0"
	"github.com/pmezard/go-difflib v1.0.0/go.mod"
	"github.com/quic-go/go-ossfuzz-seeds v0.1.0"
	"github.com/quic-go/go-ossfuzz-seeds v0.1.0/go.mod"
	"github.com/quic-go/qpack v0.6.0"
	"github.com/quic-go/qpack v0.6.0/go.mod"
	"github.com/quic-go/quic-go v0.61.0"
	"github.com/quic-go/quic-go v0.61.0/go.mod"
	"github.com/refraction-networking/utls v1.8.2"
	"github.com/refraction-networking/utls v1.8.2/go.mod"
	"github.com/rogpeppe/go-internal v1.10.0"
	"github.com/rogpeppe/go-internal v1.10.0/go.mod"
	"github.com/rs/zerolog v1.35.1"
	"github.com/rs/zerolog v1.35.1/go.mod"
	"github.com/skip2/go-qrcode v0.0.0-20200617195104-da1b6568686e"
	"github.com/skip2/go-qrcode v0.0.0-20200617195104-da1b6568686e/go.mod"
	"github.com/stretchr/testify v1.11.1"
	"github.com/stretchr/testify v1.11.1/go.mod"
	"github.com/tidwall/gjson v1.14.2/go.mod"
	"github.com/tidwall/gjson v1.18.0"
	"github.com/tidwall/gjson v1.18.0/go.mod"
	"github.com/tidwall/match v1.1.1"
	"github.com/tidwall/match v1.1.1/go.mod"
	"github.com/tidwall/pretty v1.2.0/go.mod"
	"github.com/tidwall/pretty v1.2.1"
	"github.com/tidwall/pretty v1.2.1/go.mod"
	"github.com/tidwall/sjson v1.2.5"
	"github.com/tidwall/sjson v1.2.5/go.mod"
	"github.com/xyproto/randomstring v1.2.0"
	"github.com/xyproto/randomstring v1.2.0/go.mod"
	"github.com/yuin/goldmark v1.8.5"
	"github.com/yuin/goldmark v1.8.5/go.mod"
	"go.mau.fi/util v0.2.2-0.20231228160422-22fdd4bbddeb"
	"go.mau.fi/util v0.2.2-0.20231228160422-22fdd4bbddeb/go.mod"
	"go.mau.fi/zeroconfig v0.1.2"
	"go.mau.fi/zeroconfig v0.1.2/go.mod"
	"go.uber.org/mock v0.6.0"
	"go.uber.org/mock v0.6.0/go.mod"
	"golang.org/x/crypto v0.55.0"
	"golang.org/x/crypto v0.55.0/go.mod"
	"golang.org/x/exp v0.0.0-20260813180055-c1d0aacb2297"
	"golang.org/x/exp v0.0.0-20260813180055-c1d0aacb2297/go.mod"
	"golang.org/x/net v0.58.0"
	"golang.org/x/net v0.58.0/go.mod"
	"golang.org/x/sync v0.22.0"
	"golang.org/x/sync v0.22.0/go.mod"
	"golang.org/x/sys v0.6.0/go.mod"
	"golang.org/x/sys v0.47.0"
	"golang.org/x/sys v0.47.0/go.mod"
	"golang.org/x/text v0.41.0"
	"golang.org/x/text v0.41.0/go.mod"
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod"
	"gopkg.in/check.v1 v1.0.0-20201130134442-10cb98267c6c"
	"gopkg.in/check.v1 v1.0.0-20201130134442-10cb98267c6c/go.mod"
	"gopkg.in/natefinch/lumberjack.v2 v2.2.1"
	"gopkg.in/natefinch/lumberjack.v2 v2.2.1/go.mod"
	"gopkg.in/yaml.v3 v3.0.1"
	"gopkg.in/yaml.v3 v3.0.1/go.mod"
	"gotest.tools/v3 v3.5.2"
	"gotest.tools/v3 v3.5.2/go.mod"
	"maunium.net/go/mauflag v1.0.0"
	"maunium.net/go/mauflag v1.0.0/go.mod"
	"maunium.net/go/maulogger/v2 v2.4.1"
	"maunium.net/go/maulogger/v2 v2.4.1/go.mod"
	"maunium.net/go/mautrix v0.16.3-0.20250810202616-6bc5698125c2"
	"maunium.net/go/mautrix v0.16.3-0.20250810202616-6bc5698125c2/go.mod"
	)

inherit go-module systemd
go-module_set_globals

DESCRIPTION="A Matrix-Discord puppeting bridge"
HOMEPAGE="https://github.com/mautrix/discord"
SRC_URI="https://github.com/mautrix/discord/archive/v${PV}.tar.gz -> ${P}.gh.tar.gz
	${EGO_SUM_SRC_URI}"
S="${WORKDIR}/discord-${PV}"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	acct-user/${PN}
	dev-libs/olm
	dev-util/lottieconverter
"
DEPEND="${RDEPEND}"
BDEPEND=">=dev-lang/go-1.20.0"

src_compile() {
	ego build
}

src_install() {
	dobin mautrix-discord

	keepdir /var/log/mautrix/discord
	fowners -R root:mautrix /var/log/mautrix
	fperms -R 770 /var/log/mautrix

	newinitd "${FILESDIR}/${PN}.initd" "${PN}"
	systemd_dounit "${FILESDIR}/${PN}.service"

	keepdir /etc/mautrix
	fowners -R root:mautrix /etc/mautrix
	fperms -R 770 /etc/mautrix
}

pkg_postinst() {
	einfo
	elog ""
	elog "Before you can use ${PN}, you must configure it correctly"
	elog "To generate the configuration file, use the following command:"
	elog "mautrix-signal -e"
	elog "Then move the config.yaml file to /etc/mautrix/${PN/-/_}.yaml"
	elog "Configure the file according to your homeserver"
	elog "When done, run the following command: emerge --config ${CATEGORY}/${PN}"
	elog "Then, you must register the bridge with your homeserver"
	elog "Refer your homeserver's documentation for instructions"
	elog "The registration file is located at /var/lib/${PN/-/\/}/registration.yaml"
	elog "Finally, you may start the ${PN} daemon"
	einfo
}

pkg_config() {
	su - "${PN}" -s /bin/sh -c \
		"/usr/bin/${PN} -c /etc/mautrix/${PN/-/_}.yaml -g -r /var/lib/${PN/-/\/}/registration.yaml"
}
