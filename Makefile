all : doc

doc : README.md

README.md : lib/PDF/Font/Loader.rakumod
	(\
            echo '[[Raku PDF Project]](https://pdf-raku.github.io)'; \
	    echo '/ [[PDF-Font-Loader Module]](https://pdf-raku.github.io/PDF-Font-Loader-raku/)'; \
	    echo '[![Build Status](https://travis-ci.org/pdf-raku/PDF-Font-Loader-raku.svg?branch=master)](https://travis-ci.org/pdf-raku/PDF-Font-Loader-raku)'; \
            echo '';\
            perl6 -I . --doc=Markdown lib/PDF/Font/Loader.rakumod\
        ) > README.md

test :
	@prove -e"raku -I ." t

loudtest :
	@prove -e"raku -I ." -v t

