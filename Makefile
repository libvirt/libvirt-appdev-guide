
all: html
# PDF is currently broken for some reason
#all: html pdf

html:
	publican build --langs=en-US --formats=html

pdf:
	publican build --langs=en-US --formats=pdf

rpm:
	publican package --lang=en-US --binary --desktop

clean:
	publican clean
