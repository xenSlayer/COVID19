import 'package:corona/services/country_wise_detail.dart';
import 'package:corona/ui/worldWide_detail.dart';
import 'package:flutter/material.dart';
import 'package:collection/iterable_zip.dart'; 


class CountryWise extends StatefulWidget {
  @override
  _CountryWiseState createState() => _CountryWiseState();
}

class _CountryWiseState extends State<CountryWise> {
  List<String> flags = [];
  List<String> confirmed = [];
  List<String> province = [];
  List<String> deaths = [];

  void flag() async{
    WorldWide instance = WorldWide();
    await instance.getFlag();
    
    setState(() {
      flags = instance.flags;
      confirmed = instance.confirmed;
      province = instance.province;
      deaths = instance.deaths;
      
    });

  }

  @override
  void initState() {    
    super.initState();
    flag();
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(      
      appBar: AppBar(
        leading: Icon(Icons.flag, color: Colors.black, size: 40),        
        title: Text('Country Detail'.toUpperCase(), style: TextStyle(color: Colors.black, fontFamily: 'TitanOne'),),
        backgroundColor: Colors.grey.withOpacity(0.2),
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: ListView(
    scrollDirection: Axis.vertical,
    children: IterableZip([flags, confirmed, deaths, province]).map((values){
      String f = values[0];
      String c = values[1];
      String d = values[2];
      String p = values[3];
      return CardItems(image: 'https://www.countryflags.io/$f/flat/64.png', confirmed: '$c', province: '$p', deaths: '$d', countryname: '$f',);
    }).toList()      
  ),
      ),
    );
  }
}
