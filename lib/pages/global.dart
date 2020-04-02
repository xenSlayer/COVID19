import 'package:corona/services/global_data.dart';
import 'package:corona/ui/CardBox.dart';
import 'package:flutter/material.dart';


class Global extends StatefulWidget {
  @override
  _GlobalState createState() => _GlobalState();
}

class _GlobalState extends State<Global> {
  
  String confirmed = 'N/A';
  String deaths = 'N/A';
  String critical = 'N/A';
  String recovered = 'N/A';
  
  void fetchdata() async{
    GlobalData obj = GlobalData(url: 'https://api-corona.herokuapp.com/total');
    await obj.getData();
    setState(() {
      confirmed = obj.confirmed;
      deaths = obj.deaths;
      critical = obj.critical;
      recovered = obj.recovered;
    });

  }
  @override
  void initState() {
    super.initState();
    fetchdata();
  }

  @override
  Widget build(BuildContext context) {
    String url =
     'assets/global.jpg';
    return CardBox(title: 'GLOBAL',confirmed: confirmed, deaths: deaths, recovered: recovered, image: url, serious: critical);
    }
}