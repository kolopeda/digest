class HashGenerator
  def initialize(string_to_hash)
    @string_to_hash = string_to_hash
  end

  def hash_md5
    Digest::MD5.hexdigest @string_to_hash
  end

  def hash_sha1
    Digest::SHA1.hexdigest @string_to_hash
  end
end