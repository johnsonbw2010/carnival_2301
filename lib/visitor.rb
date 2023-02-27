class Visitor
  attr_reader :name,
              :height,
              :spending_money,
              :preferences

  def initialize(name, height, spending_money)
    @name = name
    @height = height
    @spending_money = format_money(spending_money)
    @preferences = []
  end

  def format_money(money_string)
    money_string.gsub(/\D/,'').to_i
  end
end
