class BackstagePasses
  MAXIMUM_VALUE = 50
  attr_accessor :name, :sell_in

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def quality
    if sell_in >= 10
      @quality += 1
    elsif sell_in <= 5 && sell_in > 0
      @quality += 3
      if @quality > 50
        guard_quality
      end
    elsif sell_in == 0
      @quality = 0
    elsif @quality >= 50
      @quality
    end
  end

  private

  # def sell_by_passed?
  #   @quality = 0 if sell_in.zero?
  # end

  def guard_quality
    @quality = 50 if @quality > 50
  end

end
