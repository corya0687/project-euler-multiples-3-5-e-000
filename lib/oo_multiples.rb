class Multiples
  def initialize(matrix_size)
    @matrix_size= matrix_size
    @matrix = Array.new(((@matrix_size.to_i)-1),0)
  end

  def matrix_size= (matrix_size)
    @matrix_size= matrix_size
  end

  def matrix_size
    @matrix_size
  end

  def create_matrix
  i=0
    @matrix
    while i < @matrix_size - 1
    @matrix[i]= i+1
    i  += 1
    end
  end

  def collect_multiples
    create_matrix
    @matrix.select{|x| x % 3 == 0 || x % 5 == 0}
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

  def sum_multiples
    new_matrix= collect_multiples
    add_up_array(new_matrix)
  end
end