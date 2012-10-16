mkdir "..\output"

echo "copying output files"

ren "*.art,1" "*.ar1"
ren "*.art,2" "*.ar2"
ren "*.art,3" "*.ar3"
ren "*.art,4" "*.ar4"
ren "*.drl,1" "*.dr1"
ren "*.drl,2" "*.dr2"
ren "*.drl,3" "*.dr3"
ren "*.drl,4" "*.dr4"
ren "*.rou,1" "*.ro1"
ren "*.rou,2" "*.ro2"
ren "*.rou,3" "*.ro3"
ren "*.rou,4" "*.ro4"
ren "*.txt,1" "*.tx1"
ren "*.txt,2" "*.tx2"
ren "*.txt,3" "*.tx3"
ren "*.txt,4" "*.tx4"


copy "*.art" "..\output\*.art" /y
copy "*.drl" "..\output\*.drl" /y
copy "*.rou" "..\output\*.rou" /y
copy "place_txt.txt" "..\output\placement.txt" /y


ren "*.ar1" "*.art,1"
ren "*.ar2" "*.art,2"
ren "*.ar3" "*.art,3"
ren "*.ar4" "*.art,4"
ren "*.dr1" "*.drl,1"
ren "*.dr2" "*.drl,2"
ren "*.dr3" "*.drl,3"
ren "*.dr4" "*.drl,4"
ren "*.ro1" "*.rou,1"
ren "*.ro2" "*.rou,2"
ren "*.ro3" "*.rou,3"
ren "*.ro4" "*.rou,4"
ren "*.tx1" "*.txt,1"
ren "*.tx2" "*.txt,2"
ren "*.tx3" "*.txt,3"
ren "*.tx4" "*.txt,4"


