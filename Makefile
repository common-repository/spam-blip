#! /usr/bin/make -f
# License: GNU GPLv3 (see http://www.gnu.org/licenses/gpl-3.0.html)

PRJVERS = 1.0.8.1
PRJSTEM = Spam_BLIP
PRJNAME = $(PRJSTEM)-$(PRJVERS)

COPYRIGHT_HOLDER = Ed Hynan
COPYRIGHT_YEAR   = 2013
TRANS_BUGS_EMAIL = edhynan@gmail.com

SRCS = ${PRJSTEM}.php \
	BLCheckResult.inc.php \
	Options_0_0_2b.inc.php \
	OptField_0_0_2b.inc.php \
	OptSection_0_0_2b.inc.php \
	OptPage_0_0_2b.inc.php \
	ChkBL_0_0_1.inc.php \
	NetMisc_0_0_1.inc.php \
	index.php

# The Opt*.php are support classes, not tied to this plugin,
# so they do not share the text-domain and are not args to xgettext
POTSRCS = ${PRJSTEM}.php

JSDIR = js
JSBIN = $(JSDIR)/screens.min.js
JSSRC = $(JSDIR)/screens.js

LCDIR = locale
#LCDOM = $(PRJSTEM)_l10n
LCDOM = spambl_l10n
LCPOT = $(LCDIR)/$(LCDOM).pot
LCFPO = $(LCDIR)/$(LCDOM)-en_US.mo
LCFPP = $(LCDIR)/$(LCDOM)-en_US.po
LC_SH = $(LCDIR)/pot2en_US.sh
LCSRC = $(LCPOT)
LCALL = $(LC_SH) $(LCFPO) $(LCSRC)
LCBIN = $(LCFPP) $(LCFPO) $(LCPOT)

ALSO = Makefile readme.txt
ZALL = ${SRCS} ${ALSO}
ZDIR = $(JSDIR) $(LCDIR)
BINALL = ${LCBIN} ${JSBIN}
PRJDIR = ${PRJNAME}
PRJZIP = ${PRJNAME}.zip

XGETTEXT = xgettext
ZIP = zip -r -9 -v -T -X
PHPCLI = php -f

all: ${PRJZIP}

${PRJZIP}: ${JSBIN} ${ZALL} ${LCFPO}
	test -e ttd && rm -rf ttd; test -e ${PRJDIR} && mv ${PRJDIR} ttd; \
	mkdir ${PRJDIR}; \
	cp -r -p ${ZALL} ${ZDIR} ${PRJDIR}; \
	rm -f ${PRJZIP}; \
	zip -r -9 -v ${PRJZIP} ${PRJDIR}; rm -rf ${PRJDIR}; \
	test -e ttd && mv ttd ${PRJDIR}; ls -l ${PRJZIP}

# NOTE: Non-trivial JS broken by perl 'JavaScript::Packer'
# (another package) so its use is removed; JavaScript::Minifier::XS
# is new here (Ubuntu GNU/Linux)
${JSBIN}: ${JSSRC}
	O=$@; I=$${O%%.*}.js; \
	(R=`which ruby` && $$R -e "require 'uglifier'; printf '%s', Uglifier.compile(open('""$$I""', 'r'))" > "$$O" 2>/dev/null ) \
	|| \
	(P=`which perl` && $$P -e 'use JavaScript::Minifier::XS qw(minify); print minify(join("",<>))' < "$$I" > "$$O" 2>/dev/null ) \
	|| \
	(P=`which perl` && $$P -e 'use JavaScript::Minifier qw(minify);minify(input=>*STDIN,outfile=>*STDOUT)' < "$$I" > "$$O" 2>/dev/null) \
	|| { cp -f "$$I" "$$O" && echo UN-MINIFIED $$I to $$O; }

en_US-mo $(LCFPO): $(LCPOT)
	@echo Making $(LCFPO).
	@F=$$(pwd)/$(LC_SH); test -f "$$F" && test -x "$$F" || \
		{ printf '"%s" not found or not executable: FAILED\n' "$$F"; \
		exit 0; }; \
	(cd $(LCDIR) && POTNAME=$(LCDOM) "$$F") || \
	{ echo FAILED to make the l10n binary $(LFPO); \
	echo If you care about translations then check that \
	GNU gettext package is installed; exit 0; }

TOOLONGSTR = This file is distributed under the same license as the PACKAGE package.
TOOLONGREP = This file is distributed under the same license as the $(PRJSTEM) package.

pot $(LCPOT): $(POTSRCS)
	@echo Invoking $(XGETTEXT) to make $(LCPOT).
	@$(XGETTEXT) --output=- --debug --add-comments \
	--keyword=__ --keyword=_e --keyword=_n:1,2 \
	--package-name=$(PRJSTEM) --package-version=$(PRJVERS) \
	--copyright-holder='$(COPYRIGHT_HOLDER)' \
	--msgid-bugs-address='$(TRANS_BUGS_EMAIL)' \
	--language=PHP --width=72 $(POTSRCS) | \
	sed -e 's/^# SOME DESCRIPTIVE TITLE./# $(PRJSTEM) $(PRJVERS) Pot Source/' \
		-e 's/^\(# Copyright (C) \)YEAR/\1$(COPYRIGHT_YEAR)/' \
		-e 's/# $(TOOLONGSTR)/# $(TOOLONGREP)/' > $(LCPOT) && \
	echo Succeeded with $@ || \
	{ echo FAILED to make the i18n template $(LCPOT); \
	echo If you care about translations then check that \
	GNU gettext package is installed; exit 0; }

clean:
	rm -f ${BINALL}

cleanzip:
	rm -f ${PRJZIP}

cleanall: clean cleanzip
