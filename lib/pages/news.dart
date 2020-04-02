import 'package:corona/services/News_fetch.dart';
import 'package:corona/ui/News_cards.dart';
import 'package:flutter/material.dart';
import 'package:collection/iterable_zip.dart'; 

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  List<String> author = [];
  List<String> description = [];
  List<String> image = [];
  List<String> url = [];
  
  void getNewsStuffs() async{
    NewsFetch instance = NewsFetch();
    await instance.getNews();
    setState(() {
      author = instance.author;
      description = instance.description;
      image = instance.image;
      url = instance.url;
    });
  }
  
  @override
  void initState() {    
    super.initState();
    getNewsStuffs();
  }


  @override
  Widget build(BuildContext context) {
    return 
        Scaffold(    
          appBar: AppBar(
        leading: Icon(Icons.bookmark, color: Colors.black, size: 40),        
        title: Text('LATEST news'.toUpperCase(), style: TextStyle(color: Colors.black, fontFamily: 'TitanOne'),),
        backgroundColor: Colors.grey.withOpacity(0.2),
        elevation: 0,
        centerTitle: true,
      ),          
          body: Container(
            padding: EdgeInsets.all(10),          
                      child: ListView(            
              scrollDirection: Axis.vertical,
              children: IterableZip([author, description, image, url]).map((values){
                    String a = values[0];
                    String d = values[1];
                    String i = values[2];
                    String u = values[3];
                return NewsCard(author: '$a', description: '$d', image: '$i', url: '$u');
    }).toList()      
            ),
          ),
        );
          
  }
}