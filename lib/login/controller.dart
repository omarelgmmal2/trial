import 'dart:io';
import 'package:dio/dio.dart';
part 'model.dart';

class LoginController{
  Future<void> sendData() async{
    print("Enter Your phone");
    String phone = stdin.readLineSync()!;
    print("Enter Your Password");
    String password = stdin.readLineSync()!;
    try
    {
      final response = await Dio().post("https://thimar.amr.aait-d.com/api/login",
          data: {
            "phone":phone,
            "password":password,
            "type":"android",
            "device_token":"test",
            "user_type":"client"
          });
      //print(response.data);
    } on DioException catch(ex){
      print(ex.response!.data["message"]);
    }
    }
    }

