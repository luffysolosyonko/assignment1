def fib(n)
    return [] if n == 0         
    return [0] if n == 1        
    
    seq= [0, 1]           
    
    (2...n).each do |i|         
      seq << seq[i - 1] + seq[i - 2]
    end
    seq                    
end

def isPalindrome(n)
    integer=n
    string=integer.to_s
    string == string.reverse
end

def nthmax(n, a)
    sort_arr = a.uniq.sort.reverse
    sort_arr[n]
end

def freq(s)

    return "" if s.empty? 
         
        

    frequency = Hash.new(0)

        s.each_char do |char|
            frequency[char] += 1
        end

        max_char =frequency.max_by {|char,count|count}[0]
        max_char
end

def zipHash(arr1, arr2)
   return nil if arr1.size != arr2.size  
    finalhash ={}

    arr1.each_index do |i|
        finalhash[arr1[i]]=arr2[i]
    end
    finalhash
end

def hashToArray(hash)
    hash.keys.map {|key|[key,hash[key]]}
end
