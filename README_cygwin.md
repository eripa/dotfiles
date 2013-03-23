# cygwin notes

Install some usable packages:

	setup.exe -q -n -N -d -R c:\cygwin -s ftp://ftp.sunet.se/pub/lang/cygwin -P python,git,rsync,xorg-server,curl,openssh,autossh,openssl,zsh,cron,vim,python-setuptools

Install pip

	git clone git://github.com/pypa/pip.git
	cd pip
	python setup.py install
	pip install virtualenv virtualenvwrapper

## Extra

tried tinkering with cygports and installing gnome etc.. didn't work but keeping it for the sake of it.. 

	setup.exe -q -n -N -d -R c:\cygwin -s ftp://ftp.sunet.se/pub/lang/cygwin -K http://cygwinports.org/ports.gpg -s  ftp://ftp.cygwinports.org/pub/cygwinports -P pango,empathy,file-roller,gedit,gnome-session,gnome-terminal,gnomine
