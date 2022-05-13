getprop = $(shell cat module.prop | grep "^$(1)=" | head -n1 | cut -d'=' -f2)

MODNAME ?= $(call getprop,id)
MODVER ?= $(call getprop,version)
ZIP = $(MODNAME)-$(MODVER).zip

all: $(ZIP)

zip: $(ZIP)

%.zip: clean
	zip -r9 $(ZIP) . -x $(MODNAME)-*.zip LICENSE .gitignore .gitattributes Makefile /.git* 

install: $(ZIP)
	adb push $(ZIP) /sdcard/
	echo 'magisk --install-module "/sdcard/$(ZIP)"' | adb shell su -c sh -
	adb shell rm -f "/sdcard/$(ZIP)"
	adb reboot

clean:
	rm -f *.zip

update:
	curl https://raw.githubusercontent.com/topjohnwu/Magisk/master/scripts/module_installer.sh > META-INF/com/google/android/update-binary

.PHONY: all zip %.zip install clean update
