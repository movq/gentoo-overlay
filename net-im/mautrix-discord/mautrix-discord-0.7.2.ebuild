# Copyright 2022-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

EGO_SUM=(
        "github.com/DATA-DOG/go-sqlmock v1.5.0"
        "github.com/DATA-DOG/go-sqlmock v1.5.0/go.mod"
        "github.com/beeper/discordgo v0.0.0-20241129182205-d6dffc9bf133"
        "github.com/beeper/discordgo v0.0.0-20241129182205-d6dffc9bf133/go.mod"
        "github.com/coreos/go-systemd/v22 v22.5.0"
        "github.com/coreos/go-systemd/v22 v22.5.0/go.mod"
        "github.com/davecgh/go-spew v1.1.1"
        "github.com/davecgh/go-spew v1.1.1/go.mod"
        "github.com/gabriel-vasile/mimetype v1.4.7"
        "github.com/gabriel-vasile/mimetype v1.4.7/go.mod"
        "github.com/godbus/dbus/v5 v5.0.4/go.mod"
        "github.com/google/shlex v0.0.0-20191202100458-e7afc7fbc510"
        "github.com/google/shlex v0.0.0-20191202100458-e7afc7fbc510/go.mod"
        "github.com/gorilla/mux v1.8.0"
        "github.com/gorilla/mux v1.8.0/go.mod"
        "github.com/gorilla/websocket v1.5.0"
        "github.com/gorilla/websocket v1.5.0/go.mod"
        "github.com/lib/pq v1.10.9"
        "github.com/lib/pq v1.10.9/go.mod"
        "github.com/mattn/go-colorable v0.1.13"
        "github.com/mattn/go-colorable v0.1.13/go.mod"
        "github.com/mattn/go-isatty v0.0.16/go.mod"
        "github.com/mattn/go-isatty v0.0.19"
        "github.com/mattn/go-isatty v0.0.19/go.mod"
        "github.com/mattn/go-sqlite3 v1.14.24"
        "github.com/mattn/go-sqlite3 v1.14.24/go.mod"
        "github.com/pkg/errors v0.9.1/go.mod"
        "github.com/pmezard/go-difflib v1.0.0"
        "github.com/pmezard/go-difflib v1.0.0/go.mod"
        "github.com/rs/xid v1.5.0/go.mod"
        "github.com/rs/zerolog v1.31.0"
        "github.com/rs/zerolog v1.31.0/go.mod"
        "github.com/skip2/go-qrcode v0.0.0-20200617195104-da1b6568686e"
        "github.com/skip2/go-qrcode v0.0.0-20200617195104-da1b6568686e/go.mod"
        "github.com/stretchr/testify v1.10.0"
        "github.com/stretchr/testify v1.10.0/go.mod"
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
        "github.com/yuin/goldmark v1.6.0"
        "github.com/yuin/goldmark v1.6.0/go.mod"
        "go.mau.fi/util v0.2.2-0.20231228160422-22fdd4bbddeb"
        "go.mau.fi/util v0.2.2-0.20231228160422-22fdd4bbddeb/go.mod"
        "go.mau.fi/zeroconfig v0.1.2"
        "go.mau.fi/zeroconfig v0.1.2/go.mod"
        "golang.org/x/crypto v0.31.0"
        "golang.org/x/crypto v0.31.0/go.mod"
        "golang.org/x/exp v0.0.0-20241215155358-4a5509556b9e"
        "golang.org/x/exp v0.0.0-20241215155358-4a5509556b9e/go.mod"
        "golang.org/x/net v0.32.0"
        "golang.org/x/net v0.32.0/go.mod"
        "golang.org/x/sync v0.10.0"
        "golang.org/x/sync v0.10.0/go.mod"
        "golang.org/x/sys v0.0.0-20220811171246-fbc7d0a398ab/go.mod"
        "golang.org/x/sys v0.6.0/go.mod"
        "golang.org/x/sys v0.12.0/go.mod"
        "golang.org/x/sys v0.28.0"
        "golang.org/x/sys v0.28.0/go.mod"
        "gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405"
        "gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod"
        "gopkg.in/natefinch/lumberjack.v2 v2.2.1"
        "gopkg.in/natefinch/lumberjack.v2 v2.2.1/go.mod"
        "gopkg.in/yaml.v3 v3.0.1"
        "gopkg.in/yaml.v3 v3.0.1/go.mod"
        "maunium.net/go/mauflag v1.0.0"
        "maunium.net/go/mauflag v1.0.0/go.mod"
        "maunium.net/go/maulogger/v2 v2.4.1"
        "maunium.net/go/maulogger/v2 v2.4.1/go.mod"
        "maunium.net/go/mautrix v0.16.3-0.20240712164054-e6046fbf432c"
        "maunium.net/go/mautrix v0.16.3-0.20240712164054-e6046fbf432c/go.mod"
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
