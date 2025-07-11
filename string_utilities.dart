String concatenate(String a, String b) => a + b;

String interpolate(String name) => "Hello, $name!";

String substringExtract(String input, int start, int end) => input.substring(start, end);

String toUpperCase(String input) => input.toUpperCase();

String toLowerCase(String input) => input.toLowerCase();

String reverse(String input) => input.split('').reversed.join();

int getLength(String input) => input.length;
