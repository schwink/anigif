
all: out.gif

pngs: in.mp4
	mkdir -p pngs
	ffmpeg -i in.mp4 -s 960x540 pngs/frame%5d.png

frames: pngs
	mkdir -p frames
	for i in `seq 2364 2402` ; do cp pngs/frame0$$i.png frames ; done

gifs: frames
	mkdir -p gifs
	for f in `ls frames/*.png | xargs -n1 basename` ; do \
		convert frames/$$f -dither FloydSteinberg -colors 256 gifs/$$f.gif ; \
	done

out.gif: gifs
	convert -delay 3 -loop 0 gifs/*.gif out.gif

clean:
#	rm -rf pngs
#	rm -rf frames
	rm -rf gifs
	rm -f out.gif
