import 'package:dio/dio.dart';
part 'model.dart';

class MoviesController{
  Future<void> getData() async{
    var response = await Dio().get("https://api.themoviedb.org/3/discover/movie?api_key=2001486a0f63e9e4ef9c4da157ef37cd");
    MoviesData model = MoviesData.fromJson(response.data);
    print(model.results[0].title);
  }
}