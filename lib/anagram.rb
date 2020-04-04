class Anagram

    attr_accessor

    def initialize(word)
        @word = word
    end

    def match(array)
        list = []
        word = @word.chars.sort{|a,b| a.casecmp(b)}.join
        array.each do |string|
            if string.size == word.size
                test = string.chars.sort{|a,b| a.casecmp(b)}.join
                if test == word
                    list << string
                end
            end
        end
        list
    end
end