
prefix=/usr
datadir=$(prefix)/share
pkgdatadir=$(datadir)/publican
contentdir=$(pkgdatadir)/Common_Content

all: html pdf

html:
	publican build --langs=en-US --formats=html --common_content=$(contentdir)

pdf:
	publican build --langs=en-US --formats=pdf --common_content=$(contentdir)

rpm:
	publican package --lang=en-US --binary --desktop --common_content=$(contentdir)

clean:
	publican clean --common_content=$(contentdir)
