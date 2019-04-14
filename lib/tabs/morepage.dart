import 'package:flutter/material.dart';

class MorePage extends StatelessWidget{

@override
Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: Colors.black87,
    body: new Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child:new Center( 
        child:new Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 30.0),
          ),
          Container(
            child:Row(      
            
            children: <Widget>[
              Container(
                child: Image.asset('assets/images/owner.png'),
                margin: EdgeInsets.only(right:5.0),
                height: 60.0,
                width: 60.0,
              ),
             Container(
                child: Image.asset('assets/images/js.png'),
                height: 60.0,
                width: 60.0,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 2.4
                  )
                ),
                child: Image.asset('assets/images/nk.jpg'),
                margin: EdgeInsets.all(5.0),
                height: 80.0,
                width: 80.0,
              ),
              Container(
                child: Image.asset('assets/images/p2.png'),
                height: 60.0,
                width: 60.0,
              ),
              Container(
                margin: EdgeInsets.only(left:5.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white54
                  )
                ),
                height: 60.0,
                width: 60.0,
                child: new Center(
                  
                  child: Icon(Icons.add,size:40.0,color:Colors.white70),),
              ),
            ],
          )
          ),
          SizedBox(
            width: double.infinity,
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:<Widget>[
              Icon(Icons.edit,color: Colors.white.withOpacity(0.7),size:15.0),
                Text.rich(
              TextSpan(text:'Manage Profiles'),
              style:TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: 12.0,
                fontWeight: FontWeight.w700
              )
            ),
            ] 
          )

        ],
      ),
    )
    )
  );
}

}