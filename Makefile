# $OpenBSD: Makefile,v 1.2 2013/03/11 10:50:06 espie Exp $

COMMENT=	Ninja is a small build system with a focus on speed.

DISTNAME=	ninja-1.2.0

CATEGORIES=	lang

HOMEPAGE=	https://github.com/martine/ninja

MAINTAINER=	Aaron Bieber <abieber@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://deftly.net/

MODULES= lang/python

CONFIGURE_ARGS=	--verbose

NO_CCACHE=	Yes

NO_TEST=	Yes

do-build:
	cd ${WRKSRC} && env ${CONFIGURE_ENV} ${MODPY_BIN} ./bootstrap.py ${CONFIGURE_ARGS}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ninja ${PREFIX}/bin

.include <bsd.port.mk>
