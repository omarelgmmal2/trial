import 'dart:io';
import 'package:dio/dio.dart';
part 'model.dart';

class RegsiterController{
  Future<void> sendData() async{
    print("Enter Your name");
    String name = stdin.readLineSync()!;
    print("Enter Your phone");
    String phone = stdin.readLineSync()!;
    print("Enter Your Password");
    String password = stdin.readLineSync()!;
    print("Enter Your Confirm Password");
    String confirmPassword = stdin.readLineSync()!;
    print("Enter Your City Id");
    int cityId = int.tryParse(stdin.readLineSync()!)??0;

    try
    {
      final response = await Dio().post("https://thimar.amr.aait-d.com/api/client_register",
          data: {
            "fullname":name,
            "phone":phone,
            "password":password,
            "confirm_password":confirmPassword,
            "country_id":1,
            "city_id":cityId
          });

      print(response.data);
    } on DioException catch(ex){
      print(ex.response!.data["message"]);
    }
  }

}