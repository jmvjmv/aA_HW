arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# => "fiiiissshhhhhh"
# "fiiiissshhhhhh"

def sluggish_octopus(arr)
    biggest_fish = arr[0]
    max_size = arr[0].length
    arr.each do |first|
        arr.each do |second|
            biggest_fish = second if second.length > first.length
        end
    end
    biggest_fish
end

# p sluggish_octopus(arr)

class Array
  def merge_sort(&prc)
    prc ||= Proc.new { |x, y| x <=> y }

    return self if count <= 1

    midpoint = count / 2
    sorted_left = self.take(midpoint).merge_sort(&prc)
    sorted_right = self.drop(midpoint).merge_sort(&prc)

    Array.merge(sorted_left, sorted_right, &prc)
  end

  private
  def self.merge(left, right, &prc)
    merged = []

    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        merged << left.shift
      when 0
        merged << left.shift
      when 1
        merged << right.shift
      end
    end

    merged.concat(left)
    merged.concat(right)

    merged
  end
end


def dominant_octopus(arr)
    prc = Proc.new {|x,y| y.length <=> x.length}
    arr.merge_sort(&prc)[0]
end


def clever_octopus(arr)
    biggest_fish = arr[0]
    (1...arr.length).each do |i|
        biggest_fish = arr[i] if arr[i].length > biggest_fish.length
    end
    biggest_fish
end

#p clever_octopus(arr)

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(dir, arr)
    arr.each_with_index do |tile, i|
        return i if tile == dir
    end
end

#p slow_dance("up", tiles_array)
#> 0

#p slow_dance("right-down", tiles_array)
#> 3

tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}


def fast_dance(dir, hash)
    hash[dir]
end

#p fast_dance("up", tiles_hash)
# > 0

#p fast_dance("right-down", tiles_hash)
# > 3


