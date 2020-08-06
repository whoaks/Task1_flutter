import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
launchurl(url) async {
      //const url = 'https://www.linkedin.com/in/akash-pandey-0687281a3/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


OnlineVideoPlayer() {
  
  return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Card(
                child: Text('Click to open Hotstar Video' ,
              style: TextStyle(
                fontSize: 40,
                color: Colors.amber,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
              ),),
                            GestureDetector(
                onTap: ()
                {
                  launchurl('https://www.hotstar.com/in/sports/football/goals-of-the-season-ft-de-bruyne/1260038390');
                },
                child: Image.network('https://raw.githubusercontent.com/whoaks/Task1_flutter/master/hotstar.JPG',
                //fit: BoxFit.cover,
                width: 350,
                height: 400,),

              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.amber,
    );
}