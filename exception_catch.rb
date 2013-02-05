begin
  1 + '2'

  rescue => e
    puts e.message
end

def times_2(val)
  raise ArgumentError.new("'#{val}' is a string :(") if val.is_a?(String)

  val * 2

  rescue => e
    puts e
end

times_2("hello")