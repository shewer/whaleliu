#!/sur/bin/env ruby 
#
ar=File.readlines(ARGV[0])
w2={}
ar.each {|l|  aa=l.split ; w2[aa[0]] = aa[1].split("|") }



def printout(page,data)
k= ("a".."z").to_a + [";",","]
puts "     " + k.join(" ")
k.each {|i| 
   print  i + " : "  
   k.each {|j|
    
    if data[ i+ j].nil?
	   word="  "
	else 
	   word=  data[i+j][page]
	   word= "  " if   (word.nil? || word.empty? ) 
	end
	print word 
   }
   print "\n"
}
end 

(0..4).each { |i| puts "--------------- page #{i} ------------";  printout(i,w2) }

