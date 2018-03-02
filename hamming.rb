class Hamming
  def self.compute(a, b)
    raise ArgumentError unless a.size == b.size
    min = [a.size, b.size].min
    a, b = a.chars, b.chars
    (0...min).reduce(0) do |sum, index|
      a[index] == b[index] ? sum : sum += 1
    end
  end
end

class BookKeeping
  VERSION=3
end