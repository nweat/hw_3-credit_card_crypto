module SubstitutionCipher
  module Caesar
    # Encrypts document using key
    # Arguments:
    #   document: String
    #   key: Fixnum (integer)
    # Returns: String
    def self.encrypt(document, key)
      # TODO: encrypt string using caesar cipher
      #document = 'mytopsecret'
      document.to_s.chars.map do |char|
        char_decimal = char.ord
        if 126 - char_decimal < key 
          (((char_decimal + key) - 126) + 31).chr
        else
          (char_decimal + key).chr
        end
      end.join
    end

    # Decrypts String document using integer key
    # Arguments:
    #   document: String
    #   key: Fixnum (integer)
    # Returns: String
    def self.decrypt(document, key)
       # TODO: decrypt string using caesar cipher
      document.to_s.chars.map do |char|
        char_decimal = char.ord
        if char_decimal - 32 < key 
          (126 - (31 - (char_decimal - key))).chr
        else
          (char_decimal - key).chr
        end
      end.join
    end
  end

  module Permutation
    # Encrypts document using key
    # Arguments:
    #   document: String
    #   key: Fixnum (integer)
    # Returns: String
    def self.encrypt(document, key)
      # TODO: encrypt string using a permutation cipher
    end

    # Decrypts String document using integer key
    # Arguments:
    #   document: String
    #   key: Fixnum (integer)
    # Returns: String
    def self.decrypt(document, key)
      # TODO: decrypt string using a permutation cipher
    end
  end
end
