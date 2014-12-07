class FizzBuzz

  f = File.open('input.txt')

  f.each_line do |line|
    int_array = line.gsub(/\s+/, ' ').strip.split(" ")
      counter = int_array[2].to_i
      y = int_array[1].to_i
      x = int_array[0].to_i
      1.upto(counter) do |i|
        if i % x == 0 and i % y == 0
          print "FB "
        elsif i % x == 0
          print "F "
        elsif i % y == 0
          print "B "
        else
          print i.to_s + " "
        end
      end
    puts "\n"
  end

  f.close

end
