import 'package:flutter/material.dart';

class Pilha extends StatefulWidget {
  @override
  _PilhaState createState() => _PilhaState();
}

class _PilhaState extends State<Pilha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pilha"),
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
              itemCount: null,
              itemBuilder: (context, index){

              },
            ),
          ),
        ],
      ),
    );
  }
}
