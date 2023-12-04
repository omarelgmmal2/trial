import 'dart:io';
part 'ahli_atm.dart';
part 'bm_atm.dart';

abstract class ATMOperations
{
  late double balance;
  double withDraw();
  charge();
  void printReceipt();
}