import 'dart:convert';
import 'package:http/http.dart';

class GlobalData{
  String url;
  String confirmed;
  Map data;
  String deaths;
  String critical;
  List<dynamic> confirm;
  String recovered;

  GlobalData({this.url});
  Future <void> getData() async{
    
    Response response = await get(url);
    data = jsonDecode(response.body);
    confirm = data['Main'];
    Map x = confirm[0];
    confirmed = x['CoronaCases'];
    deaths = x['CoronaDeaths'];
    critical = x['CoronaCritical'];
    recovered = x['Recoverd'];
    
  }
}

