import 'package:flutter/material.dart';

class ListasPage extends StatefulWidget{
  @override
  _ListaPageState createState() =>  _ListaPageState();
}

class _ListaPageState extends State<ListasPage>{
    @override
    Widget build(BuildContext context){
      return new Scaffold(
        appBar: new AppBar(
          title: new Text('Lista Page'),
          backgroundColor: Colors.red,
        ),
      );
    }
}