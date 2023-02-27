class Visitor
  attr_reader :name,
              :height,
              :preferences
  attr_accessor :spending_money

  def initialize(name, height, spending_money)
    @name = name
    @height = height
    @spending_money = format_money(spending_money)
    @preferences = []
  end

  def format_money(money_string)
    money_string.gsub(/\D/,'').to_i
  end

  def add_preference(preference)
    @preferences << preference
  end

  def tall_enough?(requirement)
    self.height >= requirement
  end
end
