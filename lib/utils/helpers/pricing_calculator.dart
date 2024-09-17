class TPricingCalculator {
  // Calculates the tax rate for the given location
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    double shippingPrice = getShippingCost(location);
    double totalPrice = productPrice + taxAmount + shippingPrice;
    return totalPrice;
  }

  //Calculates the shipping cost for the given location
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  // Calculates the tax amount for the given location
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    return 0.1;
  }

  static double getShippingCost(String location) {
    return 5.0;
  }
}
