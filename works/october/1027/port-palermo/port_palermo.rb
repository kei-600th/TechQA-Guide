module Port
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    :"#{city.slice(0, 4).upcase}"
  end

  def self.get_terminal(ship_identifier)
    ship_identifier_head = ship_identifier.to_s.slice(0, 3)
    if ship_identifier_head == "OIL" || ship_identifier_head == "GAS"
      :A
    else
      :B
    end
  end
end
