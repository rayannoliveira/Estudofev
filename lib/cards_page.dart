import 'package:flutter/material.dart';

class CardsPages extends StatefulWidget{
  @override
 _CardsPagesState createState()=> _CardsPagesState();
}

class _CardsPagesState extends State<CardsPages>{
  @override
    Widget build(BuildContext context){
        return new Scaffold(
          appBar: new AppBar(
            title: new Text('Cards Page'),
            backgroundColor: Colors.red,
          ),
        );
    }
}