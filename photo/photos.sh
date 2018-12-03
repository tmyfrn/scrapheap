#!/bin/bash

rm photo_final.txt

for line in *.jpg
do
	#echo $line
	title=$(exiv2 -pi $line | grep ObjectName | cut -c 61-)
	caption=$(exiv2 -pi $line | grep Caption | cut -c 61-)
	sub=$(exiv2 -pi $line | grep SubLocation | cut -c 61-)

	echo $line " " $title " " $caption " " $sub
	
	
	#cat photo.txt | sed s/ttitle/$title/g | sed s/ccaption/$caption/g | sed s/ssub/$sub/g | sed s/ffile/'$line'/g >> photo_final.txt
	
	echo '   <li class="item thumb ' $sub '"> ' >> photo_final.txt
	echo '       <figure><a href="portfolio/'$file'" class="fancybox-media" data-rel="portfolio" data-title-id="title-02"> ' >> photo_final.txt
    echo '        <div class="text-overlay"> ' >> photo_final.txt
    echo '          <div class="info">'$title'</div> ' >> photo_final.txt
    echo '        </div> ' >> photo_final.txt
    echo '        <img src="portfolio/'$file'" alt="" /> </a></figure> ' >> photo_final.txt
    echo '      <div id="title-02" class="info hidden"> ' >> photo_final.txt
    echo '        <h2>'$title'</h2> ' >> photo_final.txt
    echo '        <div class="fancybody">'$caption'</div> ' >> photo_final.txt
    echo '      </div> ' >> photo_final.txt
    echo '      <!-- /.info .hidden --> ' >> photo_final.txt
    echo '    </li> ' >> photo_final.txt

done