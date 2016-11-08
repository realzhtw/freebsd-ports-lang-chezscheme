PORTNAME=	chezscheme
PORTVERSION=	9.4
CATEGORIES=	lang scheme
MAINTAINER=	root@zta.lk
COMMENT=	A powerful implementation of Scheme

MASTER_SITES=	GH

USES=           gmake
USE_GITHUB=     yes
GH_ACCOUNT=     cisco
GH_PROJECT=     ChezScheme
GH_TAGNAME=     v${PORTVERSION}
DISTNAME=	ChezScheme-${PORTVERSION}

do-configure:
	@(cd ${WRKSRC} && ${SH} ./configure --installprefix=/usr/local)

MAKE_JOBS_UNSAFE=yes


.include <bsd.port.mk>
