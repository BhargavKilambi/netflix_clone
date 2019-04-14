import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget{

@override
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.black12,
      elevation: 10.0,
      title: new TextField(
        cursorColor: Colors.white,
        decoration: new InputDecoration(
          counterStyle: TextStyle(
            color: Colors.white,
          ),
          prefixIcon: new Icon(Icons.search,color:Colors.white),
          hintText: 'Search',
          hintStyle: TextStyle(
            color: Colors.white,
            
          ),
        ),
      )
    ),
    backgroundColor: Colors.black87,
    body: new Container(
      child:new Center( 
        child:new Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 30.0),
          ),
          new Text.rich(
            TextSpan(text: 'Search for the content you need'),
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.white54,
              
            ),
          )
        ],
      ),
    )
    )
  );
}

}