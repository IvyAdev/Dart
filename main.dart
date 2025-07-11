void main() {
  // List of item prices in the cart
  List<double> cartItems = [12.0, 5.5, 20.0, 8.0, 15.0];

  // Step 1: Anonymous function to filter out items below $10
  List<double> filteredItems = cartItems.where((price) => price >= 10).toList();
  print("Filtered items (≥ \$10): $filteredItems");

  // Step 2: Apply discount using higher-order function
  List<double> discountedItems = applyDiscount(filteredItems, (price) => price * 0.9); // 10% off
  print("Discounted items (10% off): $discountedItems");

  // Step 3: Calculate total with optional tax (e.g., 8%)
  double totalWithTax = calculateTotal(discountedItems, taxRate: 0.08);
  print("Total with tax (8%): \$${totalWithTax.toStringAsFixed(2)}");

  // Step 4: Apply recursive factorial discount (e.g., 3 items → 3! = 6% discount)
  int itemCount = discountedItems.length;
  int factorialDiscountPercent = calculateFactorialDiscount(itemCount);
  print("Factorial discount: $factorialDiscountPercent%");

  double finalTotal = totalWithTax * (1 - factorialDiscountPercent / 100);
  print("Final total after factorial discount: \$${finalTotal.toStringAsFixed(2)}");
}

/// Standard function: calculates total price with optional tax
double calculateTotal(List<double> prices, {double taxRate = 0.0}) {
  double subtotal = prices.fold(0, (sum, price) => sum + price);
  double tax = subtotal * taxRate;
  return subtotal + tax;
}

/// Higher-order function: applies discount using a passed-in function
List<double> applyDiscount(List<double> prices, double Function(double) discountFunction) {
  return prices.map((price) => discountFunction(price)).toList();
}

/// Recursive function: calculates factorial discount (e.g., 4 items = 4! = 24%)
int calculateFactorialDiscount(int n) {
  if (n <= 1) return 1;
  return n * calculateFactorialDiscount(n - 1);
}
