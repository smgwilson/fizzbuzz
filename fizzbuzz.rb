# to run from command line, type "ruby fizzbuzz.rb 'input.txt'"

class FizzBuzz

  def self.process_file(path)
    f = File.open(path)

    output = ""
    f.each_line do |line|
      x,y,n = line.split(/\s+/).map {|s| s.to_i }
      output_line = FizzBuzz.process_triple(n,y,x)
      output += output_line
    end
    #do stuff, make output_str

    f.close

    return output
  end

  def self.process_triple(n,y,x)
    arr = []
    1.upto(n) do |i|
      if i % x == 0 && i % y == 0
        arr << "FB"
      elsif i % x == 0
        arr << "F"
      elsif i % y == 0
        arr << "B"
      else
        arr << i.to_s
      end
    end
    return arr.join(" ") + "\n"

  end

end

path = ARGV[0]
output = FizzBuzz.process_file(path)
$stdout.write(output)
