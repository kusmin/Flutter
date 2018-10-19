import 'package:flutter/material.dart';

class Fila extends StatefulWidget {
  @override
  _FilaState createState() => _FilaState();
}

class _FilaState extends State<Fila> {

  List _fila = [];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _requestPop,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        child: Scaffold(
            appBar: AppBar(
              title: Text("Fila"),
              backgroundColor: Colors.blueAccent,
              centerTitle: true,
            ),
            backgroundColor: Colors.white,
            floatingActionButton: FloatingActionButton(
              onPressed: (){},
              child: Icon(Icons.remove),
              backgroundColor: Colors.blueAccent,
            ),
            body: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: "Novo Elemento",
                              labelStyle: TextStyle(color: Colors.blueAccent)
                          ),
                        ),
                      ),
                      RaisedButton(
                        color: Colors.blueAccent,
                        child: Text("ADD"),
                        textColor: Colors.white,
                        onPressed: (){},
                      )
                    ],
                  ),
                ),
                Expanded(
                  child:  ListView.builder(
                    padding: EdgeInsets.only(top: 10.0),
                    itemCount: _fila.length,
                    itemBuilder: (context, index){

                    },
                  ),
                ),
              ],
            ),
        ),
      ),
    );
  }

  _requestPop (){
    return AlertDialog(
      title: Text("Tem certeza que deseja sair?"),
      actions: <Widget>[
        FlatButton(
          child: Text("Cancelar"),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        FlatButton(
          child: Text("Sim"),
          onPressed: (){
            Navigator.pop(context);
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
