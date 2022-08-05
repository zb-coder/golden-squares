def encode(plaintext, key)
    cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
    # p "key": key
    # p "key.chars": key.chars
    # p "key.chars.uniq": key.chars.uniq
    # p "key.chars.uniq + (('a'...'z').to_a": key.chars.uniq + (('a'...'z').to_a
    # exit
    ciphertext_chars = plaintext.chars.map do |char|
        # p "cipher.find_index(char)"
        # p cipher.find_index(char)
        # p char
        # p cipher
    (65 + cipher.find_index(char)).chr
    end
    return ciphertext_chars.join
  end
  
  def decode(ciphertext, key)
    cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
    
    plaintext_chars = ciphertext.chars.map do |char|
    cipher[char.ord - 65]
    # p char.ord
    # p "should be t"
    # p "Actually is #{out_char}"
        

    # p "ciphertext": ciphertext
    # p "ciphertext.chars": ciphertext.chars


    end
    return plaintext_chars.join
    # p plaintext_chars.join
  end
  


  p "decode": decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
  # Intended output:
  #
  # > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
  # => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
  #
  # > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
  # => "theswiftfoxjumpedoverthelazydog"