import 'dart:convert';
import 'package:http/http.dart';

class NepalData{
  String url;
  String confirmed;
  Map data;
  String deaths;
  String critical;
  List<dynamic> confirm;
  String recovered;

  NepalData({this.url});
  Future <void> getData() async{
    
    Response response = await get(url);
    data = jsonDecode(response.body);
    confirm = data['locations'];
    Map x = confirm[165];
    int confirmed1 = x['latest']['confirmed'];
    int.parse(confirmed1.toString());
    confirmed = '$confirmed1';

    int deaths1 = x['latest']['deaths'];
    int.parse(deaths1.toString());
    deaths = '$deaths1';

    int recovered1 = x['latest']['recovered'];
    int.parse(recovered1.toString());
    recovered = '$recovered1';

  }
}

