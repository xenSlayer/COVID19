import 'package:corona/services/nepal_data.dart';
import 'package:corona/ui/CardBox.dart';
import 'package:flutter/material.dart';

class Nepal extends StatefulWidget {
  @override
  _NepalState createState() => _NepalState();
}

class _NepalState extends State<Nepal> {
  String confirmed = 'N/A';
  String deaths = 'N/A';
  String critical = 'N/A';
  String recovered = 'N/A';

  static const TextStyle optionStyle =
      TextStyle(fontSize: 15);

  static const TextStyle boxText =
      TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
  
  void fetchNepal() async{
    NepalData obj = NepalData(url: 'https://coronavirus-tracker-api.herokuapp.com/v2/locations');
    await obj.getData();
    setState(() {
      confirmed = obj.confirmed;
      deaths = obj.deaths;
      recovered = obj.recovered;
    });    
  }

  @override
  void initState() {    
    super.initState();
    fetchNepal();
  }

  @override
  Widget build(BuildContext context) {
    String url = 'assets/nepal.png';    
    return CardBox(title: 'NEPAL' ,serious: 'N/A',confirmed: confirmed, deaths: deaths, recovered: recovered, image: url);
  }
}

