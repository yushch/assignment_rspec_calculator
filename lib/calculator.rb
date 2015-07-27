class Calculator
  def initialize(stringify = false)
    @memory = nil
    @stringify = stringify
  end
  def add(a,b)
    output(a+b)
  end
  def subtract(a,b)
    output(a-b)
  end
  def multiply(a,b)
    output(a*b)
  end
  def divide(a,b)
    raise(ArgumentError,"invalid divide") if b == 0
    result = a.to_f/b.to_f
    result.to_i == result ? output(result.to_i) : output(result)
  end
  def pow(a,b)
    output(((a**b).to_f).round(1))
  end
  def sqrt(a)
    raise(ArgumentError,"invalid sqrt") if a < 0
    root = a**0.5
    root == root.to_i ? output(root.to_i) : output(root.round(2))
  end
  # returns the item in memory and wipes memory
  def memory
    mem = @memory
    @memory = nil
    return mem
  end
  def memory=(mem)
    @memory = mem
  end
  def output(result)
    @stringify ? result.to_s : result
  end
end
