import 'package:flutter/material.dart';

class ComingSoonPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black87,
      body: ListView(
        children: <Widget>[
          itemCont(context,'Oblivion','Coming 17 April','In 2077, sixty years after a war with extraterrestrials that devastated Earth, humanity has relocated to Saturn\'s moon Titan via a giant space station called the Tet. Gigantic offshore fusion energy generators drain Earth\'s oceans to power the colonies on Titan. '
          ,'assets/images/obli.jpg','Sci-fi • Future • Cyborgs & Robots • Cyberpunk'),
          itemCont(context,'Our Planet','Coming 25 April',
          'Our Planet (2019) is a British nature documentary series made for Netflix. The series is narrated by David Attenborough and produced by Silverback Films, led by Alastair Fothergill and Keith Scholey.'
          ,'assets/images/ourplanet.jpg','Documentary • BBC • Planet Earth • Nature'),
          itemCont(context,'Chilling Adventures of Sabrina','Coming 24 April',
          'Sabrina Spellman must reconcile her dual nature as a half-witch, half-mortal while fighting the evil forces that threaten her, her family and the daylight world humans inhabit.'
          ,'assets/images/sabrina.jpg','Horror • Half-Witch • Magic'),
        ],
      ),
    );
  }

  Container itemCont(BuildContext context,String name,String arriving,String desp,String image,String tags) {
    return Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(image),
              SizedBox(width: double.infinity,height: 20,),
              Row(
                 children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left:15,top:10),
                    width: (MediaQuery.of(context).size.width/2),
                    height: 40.0,
                    child: Text(
                      arriving,
                      style: TextStyle(
                        color: Colors.white54,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left:15),
                    width: (MediaQuery.of(context).size.width/2),
                    height: 40.0,
                    child: FlatButton(
                      onPressed: (){},
                      child: Container(
                        
                        width:120,
                        height: 30,
                        decoration: BoxDecoration(
                          color:Colors.grey.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(7)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                          
                          Icon(Icons.notifications_active,color:Colors.white,size:18),
                          Text('Remind Me' ,style: TextStyle(color:Colors.white),)
                        ],)
                      ),
                    )
                  ),
                ],
              ),
              SizedBox(height: 10,)
              ,
              Row(
                children: <Widget>[
                  SizedBox(width: 10,height: 10,),
                  Text(
                name,
                style:TextStyle(
                  color:Colors.white,
                  fontSize:20,
                ),
              )
                ],
              )
              ,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Flexible(

                    fit: FlexFit.loose,
                    child: 
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        desp
                      ,style: TextStyle(
                        color: Colors.white54,
                        fontSize: 10,
                        fontWeight: FontWeight.w100
                      ),
                    ),
                    )
                    
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                   tags, textAlign: TextAlign.center,
                    style: TextStyle(
                      color:Colors.white,
                      fontWeight: FontWeight.w200,
                      fontSize: 12
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,)
            ],
          ),
        );
  }
}