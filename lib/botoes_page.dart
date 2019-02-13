import 'package:flutter/material.dart';

class BotoesPage extends StatefulWidget{
   @override
    _BotoesPageState createState()=> _BotoesPageState();
    }
 class _BotoesPageState extends State<BotoesPage>{
   ShapeBorder _buttonShape;
   @override
    Widget build( BuildContext context){
      final ButtonThemeData buttonTheme = ButtonTheme.of(context).copyWith(
        shape: _buttonShape
      );
      return new  Scaffold(
        body: new DefaultTabController(
          length: 5,  
          child:  new Scaffold(
            appBar: new AppBar(
              bottom: new TabBar(
                tabs:[
                  new Tab(text:'Raised' ),
                  new Tab(text: 'Flat',),
                  new Tab(text: 'Outline',),
                  new Tab(text: 'Icon',),
                  new Tab(text: 'Action',)
                ],
              ),
              title: new Text('Botoes Page'),
              backgroundColor: Colors.red,
            ),
            body: new TabBarView(children:[
              new ButtonTheme.fromButtonThemeData( 
                data: buttonTheme,
                child: BuildRaisedButton('adiciona dimensao a layouts'),
               ),
              new ButtonTheme.fromButtonThemeData(
                data: buttonTheme,
                child: BuildFlatButton('Flat button'),
              ),
              new ButtonTheme.fromButtonThemeData(
                data: buttonTheme,
                child: BuildOutlineButton('Outline'),
              ),
              new ButtonTheme.fromButtonThemeData(
                data: buttonTheme,
                child: BuildIconButoon(),
              ),
              new ButtonTheme.fromButtonThemeData(
                data: buttonTheme,
                child: BuildActionButton(),
              )
            ],

            ),
          ),
        ),
      );
    }
}
  
  Widget BuildRaisedButton(Title){
    return
    new Align(
      alignment: const Alignment(0.0, -0.2),
      child: new Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          new Text(Title,
              textAlign: TextAlign.center,
              style: new TextStyle(fontWeight: FontWeight.bold),
          ),
           new ButtonBar(
             mainAxisSize: MainAxisSize.min,
             children: <Widget>[
               new RaisedButton(
                 child: const Text('Raised Button'),
                 onPressed:(){
                 },
               ),
                const RaisedButton(
                  child: const Text('desabilitador'),
                  onPressed:null
                )
             ],
           ),
          new ButtonBar(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
             new RaisedButton.icon(
               icon: const Icon(Icons.add,size:18.0),
               label: const Text('Raised'),
               onPressed: (){ 
               },
             ),
            new RaisedButton.icon(
              icon: const Icon(Icons.add,size: 18.0,),
              label: const Text('Desabilitador'),
              onPressed: null,
            )
            ],
          )
        ],
      ),
    );
  }

  Widget BuildFlatButton(Title){
    return 
    new Align(
      alignment: const Alignment(0.0, -0.2),
      child: new Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
        new Text(Title,
        textAlign: TextAlign.center,
        style: new TextStyle(fontWeight: FontWeight.bold),
        ),
        new ButtonBar(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new FlatButton(
              child: Text('FlatButton'),
              onPressed: (){
              },
            ),
            new FlatButton(
              child: Text('Desabilitado'),
              onPressed: null,
            )
          ],
        )
        ],
      ),
    );
  }

  Widget BuildOutlineButton(Title){
    return
    new Align(
      alignment: const Alignment(0.0, -0.2),
      child: new Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          new Text(Title,
           textAlign: TextAlign.center,
           style: new TextStyle(fontWeight: FontWeight.bold),
          ),
          new ButtonBar(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new OutlineButton(
                child:  const Text('OutLine Button'),
                onPressed: (){     
                },   
              ),
              new OutlineButton(
                child:  const Text('Desabilitado Button'),
                onPressed: null   
              ),
            ],
          )
        ],
      ),
    );
  }
Widget BuildIconButoon(){
  return
  new Align(
    alignment: const Alignment(0.0, -0.2),
    child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.thumb_up),
            onPressed: (){

            },
          ),
          IconButton(
            icon: const Icon(Icons.thumb_down),
            onPressed: null
          )
        ],
    ),
  );
}

Widget BuildActionButton(){
  return
  new Align(
    alignment: const Alignment(0.0, -0.2),
    child: FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: (){
        
      },
    ),
  );
}