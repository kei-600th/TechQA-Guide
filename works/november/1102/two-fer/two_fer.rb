class TwoFer
  def self.two_fer(name = "default")
    name == "default"? "One for you, one for me." : "One for #{name}, one for me."
  end
end