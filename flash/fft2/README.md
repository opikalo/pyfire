The following source was pulled from http://www.nonamelab.com/games/online/firefighters-truck-2.html.
================

Command for feching flash binary was:
wget http://www.nonamelab.com/files/nonamelab/games/files/firefighterstruck2_0.swf

Processed artifacts live in flash/fft2/processed/

Interesting artifacts from the decompilation that are critical for the game to work:

flash/fft2/export/shapes/466.svg - overall topology of the the underlying world, useful for human identification of where the roads are (height="2820.15px" width="2805.5px") although crome will display it at 2822 x 2865.

flash/fft2/export/_-E4/Level1.as - has mapping of the buildings, lawns and pools, that can be injected into the SVG above to see the layout. Those can be injected into 466.svg to show overlays.

The overlays were mapped into a standalone file map.svg and exported as map.png using inkscape cropping dimension to 2800 x 2800 (see processed folder)


flash\fft2\export\frames\DefineSprite_551\1.png - bitmap of bushes on the map, usefull for localization of the image, dimensions are 2916 x 2925


flash\fft2\export\frames\DefineSprite_552\1.png - bitmap of house roofs, another potential candidate for localization, dimensions are 2952 x 2949
