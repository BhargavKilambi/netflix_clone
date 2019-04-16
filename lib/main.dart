import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'tabs/home.dart';
import 'tabs/search.dart';
import 'tabs/morepage.dart';
import 'tabs/downloads.dart';
import 'tabs/comingsoon.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_){
runApp(new MaterialApp(
      // Title
      title: "Netflix Clone",
      debugShowCheckedModeBanner: false,
      // Home
      theme: ThemeData(
        fontFamily: 'Montserrat'
      ),
      home: new MyHome()));
  });
  
}

class MyHome extends StatefulWidget {
  @override
  MyHomeState createState() => new MyHomeState();
}

// SingleTickerProviderStateMixin is used for animation
class MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  // Create a tab controller
  TabController controller;

  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
    controller = new TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new TabBarView(
        // Add tabs as widgets
        children: <Widget>[new HomePage(), new SearchPage(), new ComingSoonPage(), new DownloadPage(), new MorePage()],
        // set the controller
        controller: controller,
      ),
      resizeToAvoidBottomPadding: true,
      bottomNavigationBar: new Material(
        elevation: 1.0,
        color: Colors.black87,
        child: new TabBar(
          
          labelPadding: EdgeInsets.symmetric(horizontal:5.0),
          indicatorColor: Colors.black,
          tabs: <Tab>[
            
            new Tab(
              icon: new Icon(Icons.home),
            ),
            new Tab(
              icon: new Icon(Icons.search),
            ),
            new Tab(
              icon: new Icon(Icons.tv),
            ),
            new Tab(
              icon: new Icon(Icons.file_download),
              
            ),
            new Tab(
              icon: new Icon(Icons.menu),
            ),
          ],
          // setup the controller
          controller: controller,
        ),
      ),
    );
  }
}