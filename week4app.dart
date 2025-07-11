import 'string_utils.dart';
import 'collections_demo.dart';
import 'file_io.dart';
import 'datetime_utils.dart';

void main() {
  // String Manipulation
  String name = "Ivy";
  String greeting = interpolate(name);
  String reversed = reverse(greeting);
  int length = getLength(greeting);

  // Collections
  demoCollections();

  // File IO
  String filePath = "log.txt";
  DateTime now = DateTime.now();
  String timestamp = getFormattedDate(now);
  String logContent = "[$timestamp] Greeting: $greeting | Reversed: $reversed | Length: $length\n";
  writeToFile(filePath, logContent);

  // Date Difference Demo
  DateTime future = addDays(now, 7);
  int daysBetween = getDateDifferenceInDays(now, future);
  print("Days between now and next week: $daysBetween");
}
