import 'dart:io'; // For file operations
import 'dart:convert'; // For encoding and decoding JSON

void main() {
  final List<Map<String, String>> logEntries = [];

  while (true) {
    print('Enter a string (or type "exit" to quit):');
    String? input = stdin.readLineSync();

    if (input == null || input.trim().toLowerCase() == 'exit') {
      break;
    }

    String trimmedInput = input.trim();

    // Perform string manipulation
    String concatenated = trimmedInput + ' [Appended]';
    String reversed = concatenated.split('').reversed.join('');
    String upperCase = concatenated.toUpperCase();
    String lowerCase = concatenated.toLowerCase();
    String timestamp = getCurrentTimestamp();

    // Store results in a collection
    Map<String, String> entry = {
      'Original': trimmedInput,
      'Concatenated': concatenated,
      'Reversed': reversed,
      'Uppercase': upperCase,
      'Lowercase': lowerCase,
      'Timestamp': timestamp
    };
    
    logEntries.add(entry);

    // Save data to file
    saveLogEntries(logEntries);

    print('Entry saved.');
  }

  print('Application ended.');
}

String getCurrentTimestamp() {
  DateTime now = DateTime.now();
  return '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')} ${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')}';
}

void saveLogEntries(List<Map<String, String>> logEntries) {
  try {
    File file = File('log_entries.json');
    String json = jsonEncode(logEntries);
    file.writeAsStringSync(json);
    print('Log entries written to file successfully.');
  } catch (e) {
    print('Error occurred while writing to file: $e');
  }
}
