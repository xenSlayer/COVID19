import 'package:flutter/material.dart';

class Tips extends StatefulWidget {
  @override
  _TipsState createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,        
      // ),
          body: (
            Container(
              margin: EdgeInsets.fromLTRB(10, 40, 20, 20),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      FlatButton.icon(onPressed: () => Navigator.pop(context),
                      highlightColor: Colors.transparent,                  
                      splashColor: Colors.transparent,
                      icon: Icon(Icons.arrow_back_ios),
                      label: Text('Back'))
                    ],
                  ),
                  ListView(
                   children: <Widget>[
                     Stack(
                       children: <Widget>[
                         Text('s')
                       ],
                     )
                   ],
                  )
                ],
              ),

            )
        
      ),
    );
  }
}