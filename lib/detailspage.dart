import 'package:flutter/material.dart';
import 'data.dart';
import 'dart:ui';
class DetailsPage extends StatelessWidget{
    final String data;
  
  DetailsPage({this.data});
  @override
  Widget build(BuildContext context){
    double c_width = MediaQuery.of(context).size.width*0.95;

    return Scaffold(
      
      body: new Container(
        color:Colors.black87,
        child: ListView(
          children: <Widget>[
            Container(
              height: 240.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  
                  image: AssetImage(SeriesData().series[data]['thumbnail']),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black,BlendMode.softLight),
                )
              ),
              width: double.infinity,
              child: new BackdropFilter(
                filter:ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
                child:
              Stack(children: <Widget>[
                Positioned(
                  top:10.0,
                  left:5.0,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back,color:Colors.white),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                ),
                Positioned(
                  left: 120.0,
                  top:60,
                  child: IconButton(
                  icon: Icon(Icons.play_circle_outline,color:Colors.white54,size:100),
                  onPressed: (){
                  },
                ),
                )
                
                
              ],),)
            ),
            Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 10,width: double.infinity,),
                Row(
                  children: <Widget>[
                    SizedBox(width:10),
                    Text(
                  SeriesData().series[data]['title'],
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w500
                  ),
                )
                  ],
                ),
                SizedBox(height: 15,width: double.infinity,),
                Row(
                  children: <Widget>[
                    SizedBox(width:10),
                      Text(
                  SeriesData().series[data]['match'],
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.green.withGreen(200),
                    fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(width:20),
                    Text(
                  SeriesData().series[data]['year'] + '  16+' + (SeriesData().series[data]['movie'] == 'true'? '  1h 52min':''),
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white.withOpacity(0.6),
                    fontWeight: FontWeight.w200
                  ),
                ),
                  ],
                ),
                SizedBox(height: 10,width: double.infinity,),
                Container(
                  width: c_width,
                  child: Row(
                  children: <Widget>[
                    SizedBox(width:10),
                    Flexible(
                      child:   new Text(
                  SeriesData().series[data]['description'],
                  style: new TextStyle(
                    fontSize: 12,
                    color: Colors.white30,
                    fontWeight: FontWeight.w100,
                  ),
                  textAlign: TextAlign.left,  
                  softWrap: true,
                ),
                    )
                    
                  ],
                ),
                ),
                 Container(
                  width: c_width,
                  padding: EdgeInsets.symmetric(vertical:5),
                  child: Row(
                  children: <Widget>[
                    SizedBox(width:10),
                    Flexible(
                      child:   new Text(
                  'Starring : '+SeriesData().series[data]['starring'],
                  style: new TextStyle(
                    fontSize: 13,
                    color: Colors.white54,
                    fontWeight: FontWeight.w100,
                  ),
                  textAlign: TextAlign.left,  
                  softWrap: true,
                ),
                    )
                    
                  ],
                ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  padding: EdgeInsets.symmetric(horizontal:20),
                  width: double.infinity,
                  height: 80,
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          IconButton(
                        icon: Icon(Icons.done,color:Colors.white),
                        onPressed: (){},
                      ),
                      Text('My List',style: TextStyle(
                        color:Colors.white30,
                        fontSize: 10
                      ),)
                        ],
                      ),
                      SizedBox(width:40),
                      Column(
                        children: <Widget>[
                          IconButton(
                        icon: Icon(Icons.thumb_up,color:Colors.white),
                        onPressed: (){},
                      ),
                      Text('Rate',style: TextStyle(
                        color:Colors.white30,
                        fontSize: 10
                      ),)
                        ],
                      ),
                      SizedBox(width: 40,),
                      Column(
                        children: <Widget>[
                          IconButton(
                        icon: Icon(Icons.share,color:Colors.white),
                        onPressed: (){},
                      ),
                      Text('Share',style: TextStyle(
                        color:Colors.white30,
                        fontSize: 10
                      ),)
                        ],
                      ),
                      SizedBox(width: 40,),
                      Column(
                        children: <Widget>[
                          IconButton(
                        icon: Icon(Icons.file_download,color:Colors.white),
                        onPressed: (){},
                      ),
                      Text('Download',style: TextStyle(
                        color:Colors.white30,
                        fontSize: 10
                      ),)
                        ],
                      ),
                      
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                  height: 1,
                ),
                Divider(
                  color: Colors.black,
                  height: 1,
                ),
                SizedBox(height: 2,width: double.infinity,),
                Row(
                  children: <Widget>[
                    SizedBox(width: 20,),
                    Column(
                      children: <Widget>[
                    SizedBox(child: Container(color:Colors.red,height: 2,width: 80,),height: 2.0,),
                    Text('EPISODES',
                  style: TextStyle(
                    fontSize: 15,
                    color:Colors.white
                  ),)
                      ],
                    )
                  ,
                  SizedBox(width: 20,),
                  Text('MORE LIKE THIS',
                  style: TextStyle(
                    fontSize: 15,
                    color:Colors.white54
                  ),),
                ],),
                SizedBox(width: double.infinity,height: 10,),
                SeriesData().series[data]['movie'] == 'false'?
                FlatButton(onPressed: (){},
                  child: Container(
                    decoration: BoxDecoration(
                      color:Colors.grey.withAlpha(100),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    width:120,
                    height:40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Season 1',style: TextStyle(fontSize: 15,color: Colors.white),),
                        Icon(Icons.arrow_drop_down,color: Colors.white,)
                      ],
                    ),
                  ),
                ):SizedBox(height: 10,),
                SizedBox(height: 10,),
                episodeBlock('1. The One With The Blackout'),
                episodeBlock('2. The One Where Everyone Knows'),
                episodeBlock('3. The one With Late Thanksgiving')
              ],
            )
          ],
        ),
      ),
    );
  }

  Container episodeBlock(epTitle) {
    return Container(
                height: 150,
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                          Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(SeriesData().series[data]['thumbnail'],),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(Colors.black,BlendMode.softLight)
                            )
                          ),
                          width: 100,
                          height: 60,
                          child: Center(
                            child: Icon(Icons.play_arrow,size:35,color:Colors.white),
                          )
                        ),
                        SizedBox(height:2,child: Container(width:60,color:Colors.red),)
                          ],
                        ),
                        SizedBox(width:10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                          epTitle,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          '54 min',
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 13
                          ),
                        ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height:5),
                    Flexible(
                      child: Text(
                        SeriesData().series[data]['description'],
                        style: TextStyle(
                          color:Colors.white30,
                          fontSize: 11
                        ),
                      ),
                    ),
                    Divider(color:Colors.black,height:40)
                  ],
                ),
              );
  }
}