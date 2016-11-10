PORTNAME=	chezscheme
PORTVERSION=	9.4
CATEGORIES=	lang scheme
MAINTAINER=	root@zta.lk
COMMENT=	A powerful implementation of Scheme

STEXVERSION=	1.2.1
NANOPASSVERSION=1.9
ZLIBVERSION=	1.2.8
DIST_SUBDIR=	chezscheme
DISTFILES=	ChezScheme-${PORTVERSION}${EXTRACT_SUFX}:DEFAULT \
                stex-${STEXVERSION}${EXTRACT_SUFX}:stex \
                nanopass-framework-scheme-${NANOPASSVERSION}${EXTRACT_SUFX}:nanopass \
                zlib-${ZLIBVERSION}${EXTRACT_SUFX}:zlib

USE_GITHUB=     yes
GH_ACCOUNT=     cisco:DEFAULT dybvig:stex nanopass:nanopass madler:zlib
GH_PROJECT=     ChezScheme:DEFAULT stex:stex nanopass-framework-scheme:nanopass zlib:zlib
DISTVERSIONPREFIX=v
GH_TAGNAME=     v${PORTVERSION}:DEFAULT \
                v${STEXVERSION}:stex \
                v${NANOPASSVERSION}:nanopass \
                v${ZLIBVERSION}:zlib

USES=           gmake
ALL_TARGET=	build

do-configure:
	@(cd ${WRKSRC} && ${SH} ./configure --installprefix=/usr/local)

MAKE_JOBS_UNSAFE=yes


.include <bsd.port.mk>
