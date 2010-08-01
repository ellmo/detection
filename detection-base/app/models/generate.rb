class Generate
  require "digest/sha1"

  def self.key(length = 10)
    Digest::SHA1.hexdigest(Time.now.to_s + rand(12341234).to_s)[1..length]
  end

  def self.secret(length = 10)
    Digest::SHA1.hexdigest(Time.now.to_s + "i like pie")[0..length]
  end

  def self.pass_encrypt(pass)
    Digest::SHA1.hexdigest(pass)[0..31]
  end
end
