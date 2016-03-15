require_relative 'csv_reader'

reader = CsvReader.new

ARGV.each do |csv|
  STDERR.puts "Procesando #{csv}"
  reader.read_csv_data(csv)
end

puts "Total = #{reader.total_value}"
