# @param {String} s
# @return {Boolean}
def is_valid(s)
  stack = []
  s.each_char do |char|
    case char
    when ')'
      return false if stack.pop != '('
    when ']'
      return false if stack.pop != '['
    when '}'
      return false if stack.pop != '{'
    else
      stack.push(char)
    end
  end
  stack.empty?
end
