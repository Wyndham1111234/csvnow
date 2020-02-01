#open fh,"atest.txt";
open fh,"atime.txt";
$t=0;
$c=0;
$z=0;
$L="";
$i=0;
while($t<105){
$z=0;
@listnow=();
$i=0;
while($z<8){#3
$y=<fh>;
@listnow=(@listnow,$y);


if($y=~m/time|\d\d:|\d:/){
$u=$i%2;
if($u==1){
chomp($y);
#print "<$z>$y</>";
#print "\nfish".$z."\n";
if($z==7){
$r=$listnow[0];
chomp($r);
$listnow[0]=$r." ".$listnow[1];
$s=$listnow[0];
chomp($s);

print $s.",";
for($c=2;$c<=6;$c++){
$s= $listnow[$c];
chomp($s);

print $s.",";
}
print $y;

}
if($z==6){
for($c=0;$c<=5;$c++){
$s= $listnow[$c];
chomp($s);

print $s.",";
}
print $y;


}
print "\n";
goto labelnow;
}
$i++;
}
#print "go $y $z\n";
$z++;
}#2
labelnow:
$t++;
}