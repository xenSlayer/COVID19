import 'package:flutter/material.dart';

class CircledTips extends StatelessWidget {
  const CircledTips({
    Key key,
    @required this.url,
  }) : super(key: key);
  
  final String url;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(backgroundImage: AssetImage(url), backgroundColor: Colors.white,
    radius: 55,);
  }
}