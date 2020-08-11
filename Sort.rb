class Sort
  def bubble_sort
    rightmost = list.length - 1
      until rightmost < 1 do
        ordered_flag = true
        left = 0
        until left >= rightmost do
          if list[left] > list[left+1]
            list[left], list[left+1] = list[left+1], list[left]
            ordered_flag = false
          end
          left += 1
        end
        return list if ordered_flag
        rightmost -= 1
      end
  end
end