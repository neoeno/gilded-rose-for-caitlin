require_relative 'item'

class MagicBean < Item

  def change_quality
    change = Kernel.rand(0..1)
    @quality -= change
  end
  
end
