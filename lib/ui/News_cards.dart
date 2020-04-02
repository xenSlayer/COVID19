import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class NewsCard extends StatelessWidget {
  const NewsCard({
    Key key,
    @optionalTypeArgs this.image,
    @optionalTypeArgs this.author,
    @optionalTypeArgs this.description,
    @optionalTypeArgs this.url,

  }) : super(key: key);

  final String image;
  final String author;
  final String description;
  final String url;

  
  

  @override
  Widget build(BuildContext context) {    
    return Card(      
      elevation: 0,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), 
          color: Colors.lightGreen.withOpacity(1), 
        ),
        padding: EdgeInsets.all(20),        
        child: Column(          
          crossAxisAlignment: CrossAxisAlignment.center,          
          children: <Widget>[
          CircleAvatar(backgroundImage: NetworkImage('$image'),  
          radius: 65,            
          ),
          SizedBox(height: 8),
          Icon(Icons.person),
          Center(
            child: Text('$author', style: TextStyle(
              color: Colors.red[900]
            ),),
          ),
          SizedBox(height: 8),
          // Text('LIVERPOOL FC WINS THE TITLE', style: TextStyle(fontSize: 15),),
          SizedBox(height: 5),
          Column(
            children: <Widget>[
              Text('$description',
              style: TextStyle(fontSize: 13, color: Colors.black ),),
            ],
          ),
          FlatButton.icon(onPressed: (){
            launch('$url');                
          }, 
          icon: Icon(Icons.book, color: Colors.pink,),
           label: Text('READ',))
        ],)
      ),
    );
  }
}