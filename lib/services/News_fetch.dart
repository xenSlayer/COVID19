import 'package:http/http.dart';
import 'dart:convert';

class NewsFetch{

  Map data;
  List<String> author = [];
  List<String> description = [];
  List<String> image = [];
  List<String> url = [];


  Future <void> getNews() async{
    
    Response response = await get('http://newsapi.org/v2/top-headlines?sources=google-news&apiKey=9a678af25f9e4e97bc1104affd304596');
    data = jsonDecode(response.body);
    for(int i = 0 ; i < data['totalResults']; i++){

      String authorx = data['articles'][i]['author'];
      author.add(authorx);

      String descriptionx = data['articles'][i]['description'];
      description.add(descriptionx);

      String imagex = data['articles'][i]['urlToImage'];
      image.add(imagex);

      String urlx = data['articles'][i]['url'];
      url.add(urlx);

    }
   print(author); 
  }
}