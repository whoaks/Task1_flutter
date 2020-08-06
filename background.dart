import 'dart:ui';

import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:video_player/video_player.dart';
import 'OnlineVideoPlayer.dart';
import 'LocalAudioPlayer.dart';
import 'OnlineAudioPlayer.dart';


launchurl(url) async {
      //const url = 'https://www.linkedin.com/in/akash-pandey-0687281a3/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  var icon1= IconButton(
    icon: Icon(FontAwesomeIcons.linkedin),
    color: Colors.black,
    splashColor: Colors.amber,
    onPressed: () {
      launchurl('https://www.linkedin.com/in/akash-pandey-0687281a3/');
    },
  );
  
  var icon2= IconButton(
    icon: Icon(FontAwesomeIcons.facebook),
    color: Colors.black,
    onPressed: () {
      launchurl('https://www.facebook.com/akash.pandey.3958');
    },
  );


 myHome() { 
      return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: <Widget>[
              Tab( icon: Icon(FontAwesomeIcons.music) , ),
              Tab(icon: Icon(FontAwesomeIcons.video),),
              Tab(icon: Icon(FontAwesomeIcons.yahoo)),
            ] ,
          ),
          title: Text('Task1' ,
          style: TextStyle(
            color: Colors.black ,
            fontStyle: FontStyle.italic,
            fontSize: 30),
            ),
          backgroundColor: Colors.red,
          //leading: ,
          actions: <Widget>[
             icon1, icon2 ,
          ],
        ),
        body: TabBarView(
          children: <Widget>[
            LocalAudioPlayer() ,
            OnlineVideoPlayer() ,
            OnlineAudioPlayer(),
          ],
        ),
      ),
    );
    }
    
   

MyApp()
{

  return MaterialApp(
    home: myHome(),
    debugShowCheckedModeBanner: false,
  );
}
 /* )
  

  var title_text=
  Text(
    'Task 1',
    style: TextStyle(
      color: Colors.black ,
    ),
  );

  MyImage() {
    return (Image.asset('images/MyImage.jpg'));
  }
*/
 /*var MyAppBar = AppBar(
    title: title_text,
    backgroundColor: Colors.amber,
    leading: MyImage() ,//Icon(FontAwesomeIcons.futbol),
    actions: <Widget>[
      icon1, icon2 ,
    ],
  );

  AudioPlayer newPlayer = new AudioPlayer();
  AudioCache audio = new AudioCache(fixedPlayer: newPlayer);
  bool start = false;
  bool stop = true;
  
  playAudio() {
    if (start == false || stop == true) {
      audio.play('half_a_man.mp3'); 
      start = true;
      stop = false;
  }
}
  pauseAudio() {
    if (start == true) {
      newPlayer.pause();
      start = false;
    }
  }

  stopAudio() {
    if (start == true && stop == false) {
      newPlayer.stop();
      start = false;
      stop = true;
    }
  }

  var myimage2='https://raw.githubusercontent.com/whoaks/july22_first_app/master/MyImage.JPG';

  Button1() {

    return RaisedButton(
      onPressed: playAudio,
      child: Icon(FontAwesomeIcons.play),
      color: Colors.amber,
    );
  }

  Button2() {

    return RaisedButton(
      onPressed: pauseAudio,
      child: Icon(FontAwesomeIcons.pause),
      color: Colors.amber ,
    );
  }

  Button3() {

    return RaisedButton(
      onPressed: stopAudio,
      child: Icon(FontAwesomeIcons.stop),
      color: Colors.amber ,
    );
  }


  LocalAudioPlayer() {
    
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.cyan ,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(myimage2),
        ),
      ),
      child: Row (
        children: <Widget>[
          Button1(),
          Button2() ,
          Button3() ,
        ],
      ),
    );
  }*/

  

  /*var mybody = 
  //Text('Welcome to my page');
  Container(
    child: Column(
      children: <Widget>[
        LocalAudioPlayer() ,
      //  OnlineVideoPlayer(),
      ],
    ),
  );*/


  
    
    /*return Scaffold(
      appBar: MyAppBar,
      body: mybody ,
    );*/

    App() {
     FlutterStatusbarcolor.setNavigationBarColor(Colors.deepPurpleAccent);

     return MaterialApp(
     home: myHome() ,
     debugShowCheckedModeBanner: false,
     );
   }