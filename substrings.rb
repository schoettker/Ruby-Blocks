dictionary = ["yes","down","go","going","horn","how","below","howdy","it","i","low","own","part","below","partner","sit"]

def substrings(string, dictionary)
array = string.split(" ")
dic_string = dictionary.join("")
i=0
k=i+1
matches = Hash.new(0)
array.each do |word|
  while i < dictionary.size
    if dictionary[i].include?word
      matches[word]=k
    end
  i+=1
end
end
p matches
end
substrings("below horn",dictionary)



#prüfen ob ein teil eines wortes von string in dictionary enthalten ist
