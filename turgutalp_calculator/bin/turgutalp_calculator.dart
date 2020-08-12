import 'dart:convert';
import 'dart:io';

class Calculator {
  double number1, number2;

  Calculator(double number1, double number2) {
    this.number1 = number1;
    this.number2 = number2;
  }

  double add(double number1, double number2) {
    return number1 + number2;
  }

  double sub(double number1, double number2) {
    return number1 - number2;
  }

  double multiply(double number1, double number2) {
    return number1 * number2;
  }

  double divide(double number1, double number2) {
    return number1 / number2;
  }

  static void start() {
    print("""
  \nHesap Yapmak Icin Hazirim
  \n Yalnizca iki sayi vermen yeterli gerisi bende :)
  \n Hadi sayilari yaz..
  """);
    print("1.sayi:");
    double number1 = double.parse(stdin.readLineSync());
    print("2.sayi");
    double number2 = double.parse(stdin.readLineSync());

    Calculator calculator = new Calculator(number1, number2);
    print("""\n Toplama icin +
  \n Cikarma icin -
  \n Carpma icin *
  \n Bolme icin \
  \n Operatorlerini girmeniz yeterlidir. """);

    String e = stdin.readLineSync(encoding: Encoding.getByName("utf-8"));
    e = e.trim();

    switch (e) {
      case "+":
        print(
            "${calculator.number1} + ${calculator.number2}  = ${calculator.add(number1, number2)}");

        break;
      case "-":
        print(
            "${calculator.number1} - ${calculator.number2}  = ${calculator.sub(number1, number2)}");

        break;
      case "*":
        print(
            "${calculator.number1} *  ${calculator.number2}  = ${calculator.multiply(number1, number2)}");

        break;

      case "/":
        print(
            "${calculator.number1} \ ${calculator.number2}  = ${calculator.divide(number1, number2)}");

        break;

      default:
        print("Hatali Islem Yaptiniz");

        break;
    }
  }
}

void main(List<String> args) {
  Calculator.start();
}
