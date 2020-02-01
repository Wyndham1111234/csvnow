open fh,"start.txt";


while($L=<fh>){



if(!($L=~m/^\d\t/)){
print $L;
}


}