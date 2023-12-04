part of 'atm_operations.dart';

class BmATM extends ATMOperations
{
  BmATM(){
    print("Enter Your Balance");
    balance = double.tryParse(stdin.readLineSync()!)??0;
  }

  @override
  void charge() {
    print("Enter The Amount");
    int amount = int.tryParse(stdin.readLineSync()!)??0;
    balance = balance + amount - 10;
    printReceipt();
  }

  @override
  void printReceipt() {
    print("Your Current Balance Is $balance");
  }

  @override
  double withDraw() {
    print("Enter The Amount");
    int amount = int.tryParse(stdin.readLineSync()!)??0;
    balance = balance - amount - 10;
    printReceipt();
    return amount.toDouble();
  }

}