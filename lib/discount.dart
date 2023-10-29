class Discount {
  static double get percentage => 0.25;

  double clothes(double value) {
    return value - value * percentage;
  }
}
