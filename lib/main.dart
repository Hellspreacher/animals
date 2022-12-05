void main(List<String> args) {
  var cl = PercentCalculator();
  cl.add(45);
  cl.percent(1);
  print(cl.currentResult);
}

class PercentCalculator extends AdvancedCalculator {
  void percent(double percent) {
    divide(100);
    multiply(percent);
  }
}

class AdvancedCalculator extends Calculator {
  void pow(int a) {
    var tmp = currentResult;
    for (var i = 0; i < a - 1; i++) {
      multiply(tmp);
    }
  }
}

class Calculator {
  double currentResult = 0;
  void add(int a) {
    currentResult = currentResult + a;
  }

  void substract(int a) {
    currentResult = currentResult - a;
  }

  void divide(double a) {
    currentResult = currentResult / a;
  }

  void multiply(double a) {
    currentResult = currentResult * a;
  }
}


// hw:
/// void percent (int percent);
/// currentResult = 100
/// percent(12)
/// currentResult = 12;
/// отдельный калькулятор для процентов