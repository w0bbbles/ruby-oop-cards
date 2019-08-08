class Cards
  def initialize
    @cards = []
    52.times do |number|
      # << means to push number to left of array
      @cards << number
    end
  end

  def show_card
    @cards.shuffle.first
  end

  def get_card
    @cards.shuffle.pop
  end
end