require "nkf"

class Cubic
  def initialize(arg)
    @arg_value = zen_to_han(arg)
  end

  def calculation
    raise unless @arg_value =~ /\d+/
    @arg_value.to_i**3
  end

  private def zen_to_han(char)
    NKF.nkf('-m0Z1 -w', char)
  end
end
