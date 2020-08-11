
  def bubble_sort(list)
    rightmost = list.length - 1
    until rightmost < 1
      ordered_flag = true

      left = 0
      until left >= rightmost
        if list[left] > list[left + 1]
          list[left], list[left + 1] = list[left + 1], list[left]
            ordered_flag = false

        end
        left += 1
      end
      return list if ordered_flag
      rightmost -= 1
    end
    return list
  end

  def bubble_sort_by(list)
    rightmost = list.length - 1
    until rightmost < 1
      ordered_flag = true

      left = 0
      until left >= rightmost
        if yield(list[left], list[left + 1]).positive?
          list[left], list[left + 1] = list[left + 1], list[left]
          ordered_flag = false

        end
        left+=1
      end
      return list if ordered_flag
      rightmost -= 1
    end
    return list
  end
