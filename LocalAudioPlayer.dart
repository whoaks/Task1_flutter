import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

  var img2 = 'https://raw.githubusercontent.com/whoaks/july22_first_app/master/half_a_man.JPG';

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
        //  fit: BoxFit.cover,
          image: NetworkImage(img2),
        ),
      ),
      child: Row (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Button1(),
          Button2() ,
          Button3() ,
        ],
      ),
    );
  }
