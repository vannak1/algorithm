# Enter your code here. Read input from STDIN. Print output to STDOUT
function getCombinations(chars) {
  var result = [];
  var f = function(prefix, chars) {
    for (var i = 0; i < chars.length; i++) {
      result.push(prefix + chars[i]);
      f(prefix + chars[i], chars.slice(i + 1));
    }
  }
  f('', chars);
  return result;
}

def get_combination(array)
  result = []


end

def sequencer(array)
  array.each do |el|
    result.push(prefix + el)
