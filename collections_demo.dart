void demoCollections() {
  // List
  List<String> fruits = ['Apple', 'Banana'];
  fruits.add('Mango');
  fruits.remove('Banana');
  print('List: $fruits');

  // Set
  Set<int> numbers = {1, 2, 3};
  numbers.add(2); // Won't be added again
  numbers.add(4);
  print('Set: $numbers');

  // Map
  Map<String, int> ages = {'Alice': 20, 'Bob': 25};
  ages['Charlie'] = 30;
  print('Map: $ages');

  // Iteration example
  print('Iterating over Map:');
  ages.forEach((key, value) => print('$key is $value years old.'));
}
