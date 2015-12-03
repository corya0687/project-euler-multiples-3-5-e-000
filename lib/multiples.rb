def create_matrix(matrix)
  i=0
  while i < matrix.size
  matrix[i]= i+1
  i  += 1
  end
end

def collect_multiples(matrix_size)
  matrix = Array.new(((matrix_size.to_i)-1),0)
  create_matrix(matrix)
  puts create_matrix(matrix)
  matrix.select{|x| x % 3 == 0 || x % 5 == 0}
end

def add_up_array(new_matrix)
  i=0
  sum_three_fives = 0
  until i == new_matrix.size
  sum_three_fives += new_matrix[i]
  i += 1
  end
  sum_three_fives
end

def sum_multiples(matrix_size)
  new_matrix= collect_multiples(matrix_size)
  add_up_array(new_matrix)
  end

#puts "#{matrix}"
 #[0..1000]