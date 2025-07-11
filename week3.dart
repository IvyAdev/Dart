
double calculateTotal(List<double> prices, {double taxRate = 0.0}) {
  double subtotal = prices.fold(0.0, (sum, item) => sum + item);
  double tax = subtotal * taxRate;
  return subtotal + tax;
}


List<double> applyDiscount(
    List<double> prices, double Function(double) discountFunction) {
  return prices.map(discountFunction).toList();
}


int calculateFactorialDiscount(int n) {
  if (n <= 1) {
    return 1;
  } else {
    return n * calculateFactorialDiscount(n - 1);
  }
}

void main() {
  
  List<double> prices = [15.0, 5.0, 20.0, 8.0, 30.0];

  
  List<double> filteredPrices = prices.where((price) => price >= 10).toList();
  print("Filtered items (≥ \$10): $filteredPrices");

  
  double discountRate = 0.10;
  List<double> discountedPrices =
      applyDiscount(filteredPrices, (price) => price * (1 - discountRate));
  print("Prices after 10% discount: $discountedPrices");

  
  double totalWithTax = calculateTotal(discountedPrices, taxRate: 0.08);
  print("Total after 8% tax: \$${totalWithTax.toStringAsFixed(2)}");

  
  int itemCount = discountedPrices.length;
  int factorial = calculateFactorialDiscount(itemCount);
  double specialDiscount = totalWithTax * (factorial / 100);
  double finalTotal = totalWithTax - specialDiscount;

  print("Factorial discount (${factorial}%): -\$${specialDiscount.toStringAsFixed(2)}");
  print("Final total after all discounts: \$${finalTotal.toStringAsFixed(2)}");
}
