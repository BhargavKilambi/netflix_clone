import 'package:flutter/material.dart';

class MorePage extends StatelessWidget{

@override
Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: Colors.black87,
    body:new Column(children: <Widget>[
    Container(
      height: 170.0,
       color:Colors.black,
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
                fontSize: 15.0,
                fontWeight: FontWeight.w200,
                fontFamily: 'Montserrat'
              )
            ),
            ] 
          )

        ],
      ),
    )
    ),
    Container(
      width: double.infinity,
      height: 40.0,
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      margin: EdgeInsets.all(5.0),
      child: Row(children: <Widget>[
        Icon(Icons.notifications,color: Colors.grey,size:20.0),
        SizedBox(width: 10.0,),
        Text('App Notifications',
      style: TextStyle(
        fontFamily: 'Montserrat',
        color: Colors.grey
      ),),
      ],)
      
    ),
    Divider(color:Colors.black),
    Container(
      width: double.infinity,
      height: 40.0,
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      margin: EdgeInsets.symmetric(horizontal:5.0),
      child: Row(children: <Widget>[
        Icon(Icons.done,color: Colors.grey,size:20.0),
        SizedBox(width: 10.0,),
        Text('My List',
      style: TextStyle(
        fontFamily: 'Montserrat',
        color: Colors.grey
      ),),
      ],)
      
    ),
    Divider(color:Colors.black),
    Container(
      width: double.infinity,
      height: 30.0,
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      margin: EdgeInsets.symmetric(horizontal:5.0),
      child: Row(children: <Widget>[
        SizedBox(width: 10.0,),
        Text('App Settings',
      style: TextStyle(
        fontFamily: 'Montserrat',
        color: Colors.grey
      ),),
      ],)
      
    ),
    Divider(color:Colors.black),
    Container(
      width: double.infinity,
      height: 30.0,
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      margin: EdgeInsets.symmetric(horizontal:5.0),
      child: Row(children: <Widget>[
        SizedBox(width: 10.0,),
        Text('Account',
      style: TextStyle(
        fontFamily: 'Montserrat',
        color: Colors.grey
      ),),
      ],)
      
    ),
    Divider(color:Colors.black),
    Container(
      width: double.infinity,
      height: 30.0,
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      margin: EdgeInsets.symmetric(horizontal:5.0),
      child: Row(children: <Widget>[
        SizedBox(width: 10.0,),
        Text('Help',
      style: TextStyle(
        fontFamily: 'Montserrat',
        color: Colors.grey
      ),),
      ],)
      
    ),
    Divider(color:Colors.black),
    Container(
      width: double.infinity,
      height: 30.0,
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      margin: EdgeInsets.symmetric(horizontal:5.0),
      child: Row(children: <Widget>[
        SizedBox(width: 10.0,),
        Text('Sign Out',
      style: TextStyle(
        fontFamily: 'Montserrat',
        color: Colors.grey
      ),),
      ],)
      
    )
    ],)

  );
}

}