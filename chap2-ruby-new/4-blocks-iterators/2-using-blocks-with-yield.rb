def call_block
  puts 'Start of method'
  yield
  yield
  puts 'End of method'
end

call_block { puts 'Code block executed!' }

#Every yield call executes the completed passed code block