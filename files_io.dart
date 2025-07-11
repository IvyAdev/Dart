import 'dart:io';

void writeToFile(String path, String content) {
  try {
    File file = File(path);
    file.writeAsStringSync(content, mode: FileMode.append);
    print("Written to $path");
  } catch (e) {
    print("Error writing file: $e");
  }
}

String readFromFile(String path) {
  try {
    File file = File(path);
    return file.readAsStringSync();
  } catch (e) {
    print("Error reading file: $e");
    return '';
  }
}
