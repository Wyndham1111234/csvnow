open fh ,"afish.txt";
$count=0;
while($L=<fh>){
$L=~s/,//g;
print $L;

}