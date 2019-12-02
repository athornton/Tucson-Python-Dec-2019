all:	out/index.html

sspngs = out/images/screenshots/cilogon.png \
         out/images/screenshots/denylist.png \
         out/images/screenshots/filesystem.png \
         out/images/screenshots/nosudo.png \
         out/images/screenshots/options.png \
         out/images/screenshots/prepuller.png \
         out/images/screenshots/processes.png \
         out/images/screenshots/namespace_quota.png \
         out/images/screenshots/uid-gids.png

$(sspngs): out/%.png: %.png
	mkdir -p out/images/screenshots
	install -m 0644 $< $@

out/index.html:	Makefile talk.rst css/talk.css css/talk_dark.css \
 images/sp-adam.png images/mirror.gif images/camera.png \
 images/jupyterlab_sp.png $(sspngs)
	hovercraft talk.rst out

clean:
	rm -rf out/index.html out/js out/css out/images

