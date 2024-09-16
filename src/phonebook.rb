class PhoneBook
    def initialize
        @hash={}
        @hashfornumbertoname={}
    end

    def add(name, number, is_listed)
        
        return false unless  !@hash.key?(name)

            return false unless /\A\d{3}-\d{3}-\d{4}\z/.match?(number)

                if @hash.has_value?(@hash[name]) and @hash[number]
                    return false
                else
                    @hash[name]=number
                    @hash[number]=is_listed
                    @hashfornumbertoname[number]=name
                    
            
                    
                    return true
                end
                
            
    end

    def lookup(name)
        
        if @hash.key?(name) and @hash[@hash[name]]
            return @hash[name]
        else
            return nil
        end
    end

    def lookupByNum(number)
        if @hash[number] #if it's listed==true
            
            return @hashfornumbertoname[number]
        else
            return nil
        end

    end

    def namesByAc(areacode)
        areacodecomp=areacode.to_s[0,3]
        compar=@hash.select do |name, number|
            tempareacode=number.to_s[0,3]
            tempareacode==areacode
        end.keys
        compar
            
        end
    end


