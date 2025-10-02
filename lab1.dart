import 'dart:math';

void main() {
  int variant = 10;

  double y = 4.6 * variant;
  double z = 36.6 / variant;
  double xStart = 1.23 * variant;
  double xEnd = xStart + 10;
  double dx = 1.0;

  var bFunc = (double x, double y, double z) {
    return x *
        ((y + pow(atan(x * x + z), 0.1)) / (2 + pow(sin(pow(y, 3)), 2)) +
            exp((x + z) / y));
  };

  Function makeAFunc(double y, double z) {
    double a(double x) {
      double b = bFunc(x, y, z);
      return pow((1 + y), 2) *
          ((pow((x + y).abs(), 0.3) / pow(b, 2)) + z) /
          (1 + exp(-(x - z)) + pow(y.abs(), 0.43));
    }

    return a;
  }

  var aFunc = makeAFunc(y, z);

  print("Табуляція функції a(x,y,z,b):");
  for (double x = xStart; x <= xEnd; x += dx) {
    double result = aFunc(x);
    print("x = ${x.toStringAsFixed(2)}, a(x) = ${result.toStringAsFixed(6)}");
  }
}

