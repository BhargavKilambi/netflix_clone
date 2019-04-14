import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

@override
Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: Colors.black87,
    floatingActionButton: FloatingActionButton(
      onPressed: (){},
      child: Icon(Icons.cast,color:Colors.white),
      backgroundColor: Color.fromRGBO(105,105,105, 1),
      tooltip: 'Cast to Screen',
    ),
    body: new Container(
      child: new ListView(
        children: <Widget>[
          Container(
         child: Center(
           child:new Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               SizedBox(
                 width: double.infinity,
                 height: 300.0,
               ),
               new Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Text.rich(
                     TextSpan(
                       text:'Future  •  Sci-fi  •  Apocalypse  •  Netflix Original'
                     ),style: TextStyle(
                       color: Colors.white
                     ),
                   )
                 ],
               ),
               SizedBox(
                 width: double.infinity,
                 height: 20.0,
               ),
               new Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                    FlatButton(
                      textColor: Colors.white70,
                     onPressed: (){},
                     child: new Column(children: <Widget>[
                       Icon(Icons.add,color: Colors.white,),
                       Text('My List')
                     ],),
                   ),
                   FlatButton(
                     color: Colors.white,
                     onPressed: (){},
                     child: new Row(children: <Widget>[
                       Icon(Icons.play_arrow),
                       Text('Play')
                     ],),
                   ),
                    FlatButton(
                      textColor: Colors.white70,
                     onPressed: (){},
                     child: new Column(children: <Widget>[
                       Icon(Icons.info_outline,color: Colors.white,),
                       Text('Info')
                     ],),
                   )
                
               ],)

             ],
           )),
         width: double.infinity,
         height: 500.0,
         decoration: BoxDecoration(
         color: Colors.blue,
         image: DecorationImage(
                image: new AssetImage('assets/images/alc.jpg'),
                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.38),BlendMode.multiply),
          fit: BoxFit.fill
              )
                 ),
              ),
              SizedBox(
                height: 10.0,
                width: double.infinity,
              ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text.rich(
                     TextSpan(
                       
                       text:'Top Picks For You'
                     ),style: TextStyle(
                       color: Colors.white,
                       fontSize: 12.0,
                       fontWeight: FontWeight.w800
                     ),
                   )
            ],
          ),
             Container(
          margin: EdgeInsets.symmetric(vertical: 5.0),
          height: 200.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                child: Image.asset('assets/images/ghoul.jpg'),
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                width: 130.0,
              ),
              Container(
                child: Image.asset('assets/images/alc.jpg'),
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                width: 140.0,
              ),
              Container(
                child: Image.asset('assets/images/hox.jpg'),
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                width: 140.0,
              ),
              Container(
                child: Image.asset('assets/images/alc.jpg'),
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                width: 140.0,
              ),
              
            ],
          ),
        ),
      
        ],
      ),
    ),
  );
}

}