import 'dart:io'; // For file operations
void main() {
  // String Manipulation
  stringManipulation();

  // Collections
  collectionsDemo();

  // File Handling
  fileHandlingDemo();

  // Date and Time
  dateTimeDemo();
}

void stringManipulation() {
  String str1 = 'Hello';
  String str2 = 'World';
  
  // String Concatenation
  String concatenated = str1 + ' ' + str2;
  print('Concatenated String: $concatenated');
  
  // String Interpolation
  String interpolated = '$str1 $str2';
  print('Interpolated String: $interpolated');
  
  // Substring Extraction
  String substring = concatenated.substring(0, 5);
  print('Substring: $substring');
  
  // Case Conversion
  String upperCase = concatenated.toUpperCase();
  String lowerCase = concatenated.toLowerCase();
  print('Uppercase: $upperCase');
  print('Lowercase: $lowerCase');
  
  // Reverse String
  String reversed = concatenated.split('').reversed.join('');
  print('Reversed String: $reversed');
  
  // String Length
  int length = concatenated.length;
  print('String Length: $length');
}

void collectionsDemo() {
  // List
  List<String> fruits = ['Apple', 'Banana', 'Cherry'];
  fruits.add('Date');
  fruits.remove('Banana');
  print('List of Fruits: $fruits');
  
  // Set
  Set<String> uniqueFruits = {'Apple', 'Banana', 'Cherry'};
  uniqueFruits.add('Apple'); // No effect, as 'Apple' is already in the set
  uniqueFruits.remove('Banana');
  print('Unique Fruits Set: $uniqueFruits');
  
  // Map
  Map<String, int> fruitCounts = {
    'Apple': 5,
    'Banana': 3,
    'Cherry': 7
  };
  fruitCounts['Date'] = 2;
  fruitCounts.remove('Banana');
  print('Fruit Counts Map: $fruitCounts');
  
  // Iterating over collections
  print('Iterating over List:');
  for (var fruit in fruits) {
    print(fruit);
  }
  
  print('Iterating over Set:');
  uniqueFruits.forEach((fruit) => print(fruit));
  
  print('Iterating over Map:');
  fruitCounts.forEach((fruit, count) => print('$fruit: $count'));
}

void fileHandlingDemo() {
  try {
    // Write to a file
    File writeFile = File('output.txt');
    writeFile.writeAsStringSync('Hello Dart File Handling');
    print('Data written to file successfully.');
    
    // Read from a file
    File readFile = File('output.txt');
    String content = readFile.readAsStringSync();
    print('Data read from file: $content');
    
  } catch (e) {
    print('Error occurred while handling files: $e');
  }
}

void dateTimeDemo() {
  // Current DateTime
  DateTime now = DateTime.now();
  print('Current Date and Time: $now');
  
  // Formatting DateTime
  String formattedDate = '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}';
  print('Formatted Date: $formattedDate');
  
  // Parsing DateTime
  DateTime parsedDate = DateTime.parse('2024-09-16');
  print('Parsed Date: $parsedDate');
  
  // Adding/Subtracting Days
  DateTime futureDate = now.add(Duration(days: 10));
  DateTime pastDate = now.subtract(Duration(days: 10));
  print('Future Date (10 days later): $futureDate');
  print('Past Date (10 days earlier): $pastDate');
  
  // Calculating Difference Between Dates
  Duration difference = futureDate.difference(now);
  print('Difference between future and current date: ${difference.inDays} days');
}
