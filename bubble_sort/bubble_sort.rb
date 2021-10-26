# frozen-string-literal: true

def bubble_sort(number_arr)
  (number_arr.length - 1).downto(0) do |i|
    for j in 0..(i - 1) do
      if number_arr[j] > number_arr[j + 1]
        temp = number_arr[j]
        number_arr[j] = number_arr[j + 1]
        number_arr[j + 1] = temp
      end
    end
  end
  p number_arr
end

bubble_sort([10, 2, 6, 2, 1, 5, 8, 6, 0, 2, 8, 9])