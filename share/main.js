var birthYear = 1988;

function calcAge(birthYear) {
  var current = new Date();
  var year = current.getFullYear();
  return year - birthYear;
}

print("You are " + calcAge(birthYear) + " years old.");
