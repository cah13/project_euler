def is_palindorme?(digits)
  return digits.to_s == digits.to_s.reverse
end

def has_2_3_digit_factors?(digits)
  three_digit_nums = (100..999).to_a
  products = []
  three_digit_nums.each do |first_factor|
    three_digit_nums.each do |second_factor|
      product = first_factor * second_factor
        products << product
      end
  end
  return products.include?(digits)
end

counter = 998001

while !(is_palindorme?(counter) && has_2_3_digit_factors?(counter))
counter -= 1
end

puts counter
