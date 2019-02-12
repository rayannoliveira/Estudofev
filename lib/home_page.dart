
import 'package:flutter/material.dart';
import 'botoes_page.dart';

class HomePage extends StatefulWidget{
  @override

  _HomePageState createState()=> new  _HomePageState();
  }
  
  class _HomePageState extends State<HomePage> {
    String avatar='https://portd.bss.design/';
    @override
    Widget build(BuildContext context){
      return new Scaffold(
        appBar: new AppBar(
          title:  new Text("Isso ai cara"),
          backgroundColor: Colors.red ,
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader( 
                accountName: new Text('Rayanne'), 
                accountEmail: new Text('rayanneo390@gmail.com'),
                currentAccountPicture: new GestureDetector(
                  onTap: () => print('toque na imagem'),
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage(avatar),
                  ),
                ),
                decoration: new BoxDecoration(
                  image: new DecorationImage( 
                    fit: BoxFit.fill,
                    image: NetworkImage(avatar)
                    )
                ),
                ),
                new ListTile(
                  title: new Text("Botões"),
                  trailing: new Icon(Icons.arrow_forward),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new BotoesPage())
                    );
                  },
                ),
                new Divider(),
                    new ListTile(
                  title: new Text("Listas"),
                  trailing: new Icon(Icons.arrow_forward),
                ),
                new Divider(),
                    new ListTile(
                  title: new Text("cards"),
                  trailing: new Icon(Icons.arrow_forward),
                ),
            ],
          ),
        ),
        body:  new Center(
          child: new Text("Então tentando")
        ),
      );

    }
}
