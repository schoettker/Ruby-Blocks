def substrings(string,dictionary)
  occurences = Hash.new(0)
  dictionary.select do |entry|
    searchterms = string.split(" ")
    searchterms.each do |word|
      if entry.include?(word)
        occurences[entry.to_sym] += 1
      end
    end
  end
  p occurences
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)
