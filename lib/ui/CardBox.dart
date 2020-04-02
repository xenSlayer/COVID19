import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:line_icons/line_icons.dart';


class CardBox extends StatelessWidget {
  const CardBox({
    Key key,
    @optionalTypeArgs this.optionStyle,
    @required this.confirmed,
    @optionalTypeArgs this.boxText,
    @required this.deaths,
    @required this.recovered,
    @optionalTypeArgs this.context,
    @required this.image,
    @required this.serious,
    @required this.title,

  }) : super(key: key);

  final TextStyle optionStyle;
  final String confirmed;
  final TextStyle boxText;
  final String deaths;
  final String recovered;
  final BuildContext context;
  final String image;
  final String serious;
  final String title;

  @override
  Widget build(BuildContext context) {
    ScreenScaler scaler = ScreenScaler()..init(context);
    return Container(
      margin: scaler.getMarginLTRB(2, 5, 2, 1),
          child: Column(   
           
      children: <Widget>[
        CircleAvatar(backgroundImage: 
        AssetImage(image), radius: scaler.getHeight(6),
        backgroundColor: Colors.white),
        SizedBox(height: scaler.getHeight(2)),
        Text('$title DATA',
        style: TextStyle(fontSize: scaler.getTextSize(16), fontWeight: FontWeight.bold, color: Colors.pink),),
        Text('All data are fetched from API', style: TextStyle(fontSize: scaler.getTextSize(9.5)),),
        SizedBox(height: scaler.getHeight(1),),
        Row(              
          mainAxisAlignment: MainAxisAlignment.center,    
            crossAxisAlignment: CrossAxisAlignment.center,   
      children: <Widget>[        
        Card(
          child: Container(
            height: 125,
            width: 80,                    
            margin: EdgeInsets.fromLTRB(scaler.getHeight(2),scaler.getHeight(2), scaler.getHeight(2), scaler.getHeight(2)),
            child: Column(
              children: <Widget>[
                Text('CONFIRMED', style: TextStyle(
                  fontSize: scaler.getTextSize(10)
                ),),
                SizedBox(height: scaler.getHeight(2)),
                Icon(Icons.flag, size: scaler.getHeight(4),),
                SizedBox(height:scaler.getHeight(2)),
                Text('$confirmed', style: TextStyle(
                  fontSize: scaler.getTextSize(10)
                ),
                )
              ],
            )),
            color: Colors.blue[300],
            ),
            Row(              
              children: <Widget>[                
              Card(
              child: Container(                                                
                height: 125,
                width: 80,   
              margin: scaler.getMarginLTRB(2, 2, 2, 2),
              child: Column(
                children: <Widget>[
                  Text('SERIOUS', style: TextStyle(
                  fontSize: scaler.getTextSize(10)
                ),),
                  SizedBox(height: scaler.getHeight(2),),
                  Icon(LineIcons.ils, size: scaler.getHeight(4)),
                  SizedBox(height: scaler.getHeight(2)),
                Text('$serious',style: TextStyle(
                  fontSize: scaler.getTextSize(10)))     
                ],
              )
                ),
              color: Colors.orange,
            ),
              ]
            ),
            Column(
              children: <Widget>[    
                Card(
              child: Container(   
                height: 125,
                width: 60,                                        
              margin: scaler.getMarginLTRB(5, 2, 5, 2),
              child: Column(
                children: <Widget>[
                  Text('DEATHS', style: TextStyle(
                  fontSize: scaler.getTextSize(10)
                ),),
                  SizedBox(height:20),
                  Icon(Icons.delete, size: scaler.getHeight(4)),
                  SizedBox(height:20),
                Text('$deaths',style: TextStyle(
                  fontSize: scaler.getTextSize(10)))     
                ],
              )
                ),
              color: Colors.red,
            ),            
                
              ]
            )
            ],
        ),
        Column(
          children: <Widget>[
            Card(
              child: Container(                       
                height: 180,
                width: 360,   
                padding: EdgeInsets.fromLTRB(5, 20, 5, 5),                             
              // margin: EdgeInsets.fromLTRB(scaler.getHeight(13.5),scaler.getHeight(2), scaler.getHeight(13.5), scaler.getHeight(2)),
              child: Column(
                children: <Widget>[
                  Text('RECOVERED', style: TextStyle(fontSize: scaler.getTextSize(10)),),
                  SizedBox(height: scaler.getHeight(2)),
                  Icon(Icons.restore, size: scaler.getHeight(4)),
                  SizedBox(height: scaler.getHeight(2)),
                Text('$recovered',style: TextStyle(fontSize: scaler.getTextSize(12))) 
                ],
              )
                ),
              color: Colors.green,
            ),  
          ]
        )
      ]
      ),
    );
  }
}