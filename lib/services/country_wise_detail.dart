import 'dart:convert';
import 'package:http/http.dart';

class WorldWide{

  
  List<String> flags = [];
  List<String> confirmed = [];
  List<String> deaths = [];
  List<String> province = [];
  int responseCode;

  Future <void> getFlag() async{
    
    Response response = await get('https://coronavirus-tracker-api.herokuapp.com/v2/locations');
    Map data = jsonDecode(response.body);
    responseCode = response.statusCode;
    for(int i = 0 ; i < 252; i++){
      String flag = data['locations'][i]['country_code'];
      int confirm = data['locations'][i]['latest']['confirmed'];
      int deathss = data['locations'][i]['latest']['deaths'];
      String provincex = data['locations'][i]['province'];

      province.add(provincex);

      flags.add(flag);

      int.parse(confirm.toString());
      confirmed.add('$confirm');

      int.parse(deathss.toString());
      deaths.add('$deathss');      
    }
  }
}

