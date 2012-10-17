mkdir "..\output"

echo "copying output files"

copy "BOTTOM.art" "..\output\BOTTOM.art" /y
copy "CONTOUR.art" "..\output\CONTOUR.art" /y
copy "PASTE_BOT.art" "..\output\PASTE_BOT.art" /y
copy "PASTE_TOP.art" "..\output\PASTE_TOP.art" /y
copy "SILK_BOT.art" "..\output\SILK_BOT.art" /y
copy "SILK_TOP.art" "..\output\SILK_TOP.art" /y
copy "SOLDER_BOT.art" "..\output\SOLDER_BOT.art" /y
copy "SOLDER_TOP.art" "..\output\SOLDER_TOP.art" /y
copy "TOP.art" "..\output\TOP.art" /y
copy "place_txt.txt" "..\output\placement.txt" /y

copy "C:\Repositories\Hardware Libraries\trunk\tools\gerberviewer\2layer.gvp" "..\2layer.gvp" /y

ren "*.drl,1" "*.dr1"
ren "*.drl,2" "*.dr2"
ren "*.drl,3" "*.dr3"
ren "*.drl,4" "*.dr4"
ren "*.rou,1" "*.ro1"
ren "*.rou,2" "*.ro2"
ren "*.rou,3" "*.ro3"
ren "*.rou,4" "*.ro4"


copy "*.drl" "..\output\*.drl" /y
copy "*.rou" "..\output\*.rou" /y

ren "*.dr1" "*.drl,1"
ren "*.dr2" "*.drl,2"
ren "*.dr3" "*.drl,3"
ren "*.dr4" "*.drl,4"
ren "*.ro1" "*.rou,1"
ren "*.ro2" "*.rou,2"
ren "*.ro3" "*.rou,3"
ren "*.ro4" "*.rou,4"


