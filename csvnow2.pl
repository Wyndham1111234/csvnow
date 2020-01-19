open fh,"adn2.txt";
$n=0;
while($L=<fh>){


if($b==6){

print "time $b $L";
}else{
chomp($L);
print "$L, ";

}
$n++;

$b=$n%7;


}