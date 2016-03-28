var birthYear = 1985;

function calcAge(birthYear) {
  var current = new Date();
  var year = current.getFullYear();
  return year - birthYear;
}

print("You are " + calcAge(birthYear) + " years old.");
