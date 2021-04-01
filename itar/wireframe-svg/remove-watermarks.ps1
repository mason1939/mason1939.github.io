#C:\Users\MS\Desktop\projects\itar\wireframe
$dest=".\"
$deploy="C:\Users\MS\Desktop\projects\mason1939.github.io\itar\wireframe-svg"
ls *.svg|%{$n=$_.name;cat $n -Encoding utf8|%{$_ -replace "Visual Paradigm Enterprise \[evaluation copy\]"}|sc $dest\$n -Encoding utf8}
cp $dest\*.* $deploy
$aa=@();ls *.svg|%{$aa+=[pscustomobject]@{name=$_.name;encoded=$($_.Name -replace " ","%20")}};$aa|fl|Out-String|sc list.txt