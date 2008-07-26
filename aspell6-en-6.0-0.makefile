ASPELL = /W/bin/aspell
ASPELL_FLAGS = 
PREZIP = /W/bin/prezip-bin
DESTDIR = 
dictdir = /W/lib/aspell-0.60
datadir = /W/lib/aspell-0.60

# Generated with Aspell Dicts "proc" script version 0.60.2

lang = en
version = 6.0-0

cwl_files = en-common.cwl en-variant_0.cwl en-variant_1.cwl en-variant_2.cwl en_CA-w_accents-only.cwl en_CA-wo_accents-only.cwl en_GB-ise-w_accents-only.cwl en_GB-ise-wo_accents-only.cwl en_GB-ize-w_accents-only.cwl en_GB-ize-wo_accents-only.cwl en_US-w_accents-only.cwl en_US-wo_accents-only.cwl
data_files = en.dat en_phonet.dat en_affix.dat
doc_files = README README.iso Copyright
extra_files = configure info Makefile.pre
multi_files = american.alias american-w_accents.alias american-wo_accents.alias british.alias british-ise.alias british-ise-w_accents.alias british-ise-wo_accents.alias british-ize.alias british-ize-w_accents.alias british-ize-wo_accents.alias british-w_accents.alias british-wo_accents.alias canadian.alias canadian-w_accents.alias canadian-wo_accents.alias en.multi en-variant_0.multi en-variant_1.multi en-variant_2.multi en-w_accents.multi en-wo_accents.multi en_CA.multi en_CA-w_accents.multi en_CA-wo_accents.multi en_GB.multi en_GB-ise.multi en_GB-ise-w_accents.multi en_GB-ise-wo_accents.multi en_GB-ize.multi en_GB-ize-w_accents.multi en_GB-ize-wo_accents.multi en_GB-w_accents.multi en_GB-wo_accents.multi en_US.multi en_US-w_accents.multi en_US-wo_accents.multi english.alias english-variant_0.alias english-variant_1.alias english-variant_2.alias english-w_accents.alias english-wo_accents.alias
rws_files = en-common.rws en-variant_0.rws en-variant_1.rws en-variant_2.rws en_CA-w_accents-only.rws en_CA-wo_accents-only.rws en_GB-ise-w_accents-only.rws en_GB-ise-wo_accents-only.rws en_GB-ize-w_accents-only.rws en_GB-ize-wo_accents-only.rws en_US-w_accents-only.rws en_US-wo_accents-only.rws

distdir=aspell6-${lang}-${version}

all: ${rws_files} ${data_files}

install: all
	mkdir -p ${DESTDIR}${dictdir}/
	cp ${rws_files} ${multi_files} ${DESTDIR}${dictdir}/
	cd ${DESTDIR}${dictdir}/ && chmod 644 ${rws_files} ${multi_files}
	mkdir -p ${DESTDIR}${datadir}/
	cp ${data_files} ${DESTDIR}${datadir}/
	cd ${DESTDIR}${datadir}/ && chmod 644 ${data_files}

clean:
	rm -f ${rws_files}

distclean: clean
	rm -f Makefile

maintainer-clean: distclean
	rm -f ${multi_files} configure Makefile.pre

uninstall:
	-cd ${DESTDIR}${dictdir}/ && rm ${rws_files} ${multi_files} ${link_files}
	-cd ${DESTDIR}${datadir}/ && rm ${data_files}

dist: ${cwl_files}
	perl proc
	./configure
	@make dist-nogen

dist-nogen:
	-rm -r ${distdir}.tar.bz2 ${distdir}
	mkdir ${distdir}
	cp -p ${extra_files} ${cwl_files} ${multi_files} ${doc_files} ${data_files} ${distdir}/
	-test -e doc  && mkdir ${distdir}/doc  && chmod 755 ${distdir}/doc  && cp -pr doc/* ${distdir}/doc/
	-test -e misc && mkdir ${distdir}/misc && chmod 755 ${distdir}/misc && cp -pr misc/* ${distdir}/misc/
	tar cf ${distdir}.tar ${distdir}/
	bzip2 -9 ${distdir}.tar
	rm -r ${distdir}/

distcheck:
	tar xfj ${distdir}.tar.bz2
	cd ${distdir} && ./configure && make

rel:
	mv ${distdir}.tar.bz2 ../rel


en-common.rws: en-common.cwl

en-variant_0.rws: en-variant_0.cwl

en-variant_1.rws: en-variant_1.cwl

en-variant_2.rws: en-variant_2.cwl

en_CA-w_accents-only.rws: en_CA-w_accents-only.cwl

en_CA-wo_accents-only.rws: en_CA-wo_accents-only.cwl

en_GB-ise-w_accents-only.rws: en_GB-ise-w_accents-only.cwl

en_GB-ise-wo_accents-only.rws: en_GB-ise-wo_accents-only.cwl

en_GB-ize-w_accents-only.rws: en_GB-ize-w_accents-only.cwl

en_GB-ize-wo_accents-only.rws: en_GB-ize-wo_accents-only.cwl

en_US-w_accents-only.rws: en_US-w_accents-only.cwl

en_US-wo_accents-only.rws: en_US-wo_accents-only.cwl


.SUFFIXES: .cwl .rws .wl

.cwl.rws:
	${PREZIP} -d < $< | ${ASPELL} ${ASPELL_FLAGS} --lang=en create master ./$@

.wl.cwl:
	cat $< | LC_COLLATE=C sort -u | ${PREZIP} -z > $@

.pz:
	${PREZIP} -d < $< > $@

