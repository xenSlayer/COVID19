import 'package:corona/ui/circledTips.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  List<String> a = [];
  @override
  Widget build(BuildContext context) {
    ScreenScaler scaler = ScreenScaler()..init(context);
    return Scaffold(            
      backgroundColor: Colors.grey[200],
      body: 
  
        SafeArea(
                  child: Padding(
                    padding: scaler.getPaddingAll(2),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: scaler.getHeight(6),),
                        Center(
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/coronadetails.png'),          
                            backgroundColor: Colors.grey[200],               
                            radius: scaler.getHeight(6.5),                            
                          ),
                        ),

                        
                        
                        SizedBox(height: scaler.getHeight(1.5)),
                        Center(child: Text('COVID-19', 
                        style: TextStyle(fontSize: scaler.getTextSize(19), color: Colors.purple, fontFamily: 'TitanOne', letterSpacing: 3))),
                        SizedBox(height: scaler.getHeight(1)),                                                                      
                        Text('Go Corona, Corona go', style: 
                        TextStyle(letterSpacing: 2, fontSize: scaler.getTextSize(11), color: Colors.black, fontWeight: FontWeight.bold),),
                        SizedBox(height: scaler.getHeight(6)),                        
                        Text('Tips', style: TextStyle(
                                  fontSize: scaler.getHeight(1.8)
                                ),),       

                        SizedBox(height:scaler.getHeight(2)),
                        Container(height: scaler.getHeight(20), width: scaler.getWidth(90),
                        decoration: BoxDecoration(
                          color: Colors.white,                          
                          borderRadius: BorderRadius.circular(scaler.getHeight(2))),
                          padding: scaler.getPaddingLTRB(2, 2, 2, 2),
                          child: ListView(
                            addAutomaticKeepAlives: true,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,                            
                          children: <Widget>[
                            Column(                              
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(                                                                     
                                  children:
                                     <Widget>[ 
                                CircledTips(url: 'assets/clean.png'),
                                Container(width: 30),
                                CircledTips(url: 'assets/mask.png'),
                                Container(width: 30),
                                CircledTips(url: 'assets/home.png'),
                                Container(width: 30),
                                CircledTips(url: 'assets/wash.png'),
                                Container(width: 30),
                                CircledTips(url: 'assets/sneeze.png'),                                                                                                                         
                                ],
                                ),
                              ],
                            ),
                          ],
                        ),                        
                        ),

                      ],
                    ),
                  ),
        )      
    );
  }
}
