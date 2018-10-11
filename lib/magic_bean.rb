require_relative 'item'

class MagicBean < Item

  def change_quality
    return @quality if @quality ==  0
    @quality -= random_change
  end

  private

  def random_change
    Kernel.rand(0..1)
  end

end
