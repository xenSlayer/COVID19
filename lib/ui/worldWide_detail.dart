import 'package:flutter/material.dart';

class CardItems extends StatelessWidget {
  const CardItems({
    Key key,
    @required this.image,
    @required this.confirmed,
    @optionalTypeArgs this.countryname,
    @optionalTypeArgs this.province,
    @optionalTypeArgs this.deaths,
  }) : super(key: key);

  final String image;
  final String countryname;
  final String confirmed;
  final String province;
  final String deaths;


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
            color: Colors.cyan.withOpacity(0.8),
            borderRadius: BorderRadius.circular(12),          
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,    
            crossAxisAlignment: CrossAxisAlignment.start,      
            children: <Widget>[                   
              Text('$countryname'),
              
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[                  
                  Image.network('$image'),                  
                  Column(                    
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[                      
                      Text('CONFIRMED: $confirmed', style: TextStyle(fontSize: 13)),
                      SizedBox(height: 3),    
                      Text('DEATHS: $deaths', style: TextStyle(fontSize: 13, color: Colors.red[900]) ),                                                                                                     
                      SizedBox(height: 3),    
                      Text('$province', style: TextStyle(fontSize: 11,) ),                                                                                                     
                    ],
                  )
                  
                  
                  // Text('$countryname', style: TextStyle(fontSize: 35, color: Colors.black), ),
                ],
              ),
              ],
          ),
        ),
    );
  }
}