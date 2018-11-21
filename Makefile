
DISTDIR = /service/PixFramework

MKDIR   = /bin/mkdir
RSYNC   = /usr/bin/rsync
WHOAMI  = /usr/bin/whoami

deploy:
	@if [ 'root' != `${WHOAMI}` ]; then \
	  echo "Error: you must be root to deploy."; \
	  false; \
	fi

	@if [ ! -d "${DISTDIR}" ]; then \
	  ${MKDIR} -p "${DISTDIR}"; \
	fi

	@${RSYNC} -av --exclude '*~' --exclude '.git*' --delete \
	  Pix \
	  ${DISTDIR}
