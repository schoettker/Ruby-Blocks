def substrings(string,dictionary)
  occurences = Hash.new(0)
  dictionary.select do |entry|
    searchterms = string.split(" ")
    searchterms.each do |word|
      if word.downcase.include?(entry)
        occurences[entry.to_sym] += 1
      end
    end
  end
  p occurences
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
