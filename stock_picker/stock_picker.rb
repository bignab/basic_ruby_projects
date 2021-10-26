# frozen_string_literal: true

def stock_picker(stock_arr)
  best_purchase_day = 0
  best_sale_day = stock_arr.length - 1
  best_combo_profit = -999_999_999_999
  for i in 0..(stock_arr.length - 1) do
    for j in (i + 1)..(stock_arr.length - 1) do
      if stock_arr[j] - stock_arr[i] > best_combo_profit
        best_purchase_day = i
        best_sale_day = j
        best_combo_profit = stock_arr[j] - stock_arr[i]
      end
    end
  end
  p best_purchase_day
  p best_sale_day
  p best_combo_profit
end

stock_picker([1, 7, 2, 80, 50, 3, 27, 2, 29])
