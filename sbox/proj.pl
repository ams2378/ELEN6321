print "Perl for project\n";
open FILE1, "aes_sbox.nl.v";
open FILE3, ">aes_sbox_final.nl.v";
while ($line=<FILE1>){
	#chmop $line;
if ($line =~ /^\$/ || $line =~ /^\#/){	
print "pass this line !!\n";
}
else{
	@split = split(/\s+/,$line);
  foreach (@split){

  	if($_ =~ /\,$/){  	
#  	if($_ =~ /^\.()\,/){  	
      push @array, $_;
      $_ =~ s/\)/_n\)/;
      
      print "b: $_\n";

    }   
  	elsif($_ =~ /\)$/){  	
#  	elsif($_ =~ /^\.*\)$/){  	
      $a = $_;;
      $a =~ s/\)/_n\)\,/;
      
      print "a: $a\n";
      
      push @array, $a;
    }

    push @array, $_;
  }

}
    print FILE3 "@array\n";
    @array =();
}

