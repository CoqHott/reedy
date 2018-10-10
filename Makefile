all: Makefile.coq
	cd coq-2ltt && $(MAKE)
	$(MAKE) -f Makefile.coq

clean: Makefile.coq
	cd coq-2ltt && $(MAKE) clean
	$(MAKE) -f Makefile.coq clean
	rm -f Makefile.coq

Makefile.coq: _CoqProject
	coq_makefile -f _CoqProject -o Makefile.coq
