import 'package:flutter/material.dart';
import 'package:music_player/src/widgets/custom_appbar.dart';

class MusicPlayerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[CustomAppBar(), ImagenDiscoDuration(), TituloPlay()],
      ),
    );
  }
}

class TituloPlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      margin: EdgeInsets.only(top: 40),
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Text('Far Away',
                  style: TextStyle(
                      fontSize: 30, color: Colors.white.withOpacity(0.8))),
              Text('-Breaking Benjamin',
                  style: TextStyle(
                      fontSize: 15, color: Colors.white.withOpacity(0.5))),
            ],
          ),
          Spacer(),
          FloatingActionButton(
            elevation: 0,
            highlightElevation: 0,
            backgroundColor: Color(0xfff8cb58),
            child: Icon(Icons.play_arrow),
            onPressed: (){
              // TODO
            },
          )
        ],
      ),
    );
  }
}

class ImagenDiscoDuration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      margin: EdgeInsets.only(top: 70),
      child: Row(
        children: <Widget>[
          ImagenDisco(),
          SizedBox(width: 17),
          BarraProgreso(),
          SizedBox(width: 17),
        ],
      ),
    );
  }
}

class BarraProgreso extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final style = TextStyle(color: Colors.white.withOpacity(0.4));
    return Container(
      child: Column(
        children: <Widget>[
          Text('00:00', style: style),
          SizedBox(height: 10),
          Stack(
            children: <Widget>[
              Container(
                  width: 3, height: 230, color: Colors.white.withOpacity(0.1)),
              Positioned(
                bottom: 0,
                child: Container(
                    width: 3,
                    height: 230,
                    color: Colors.white.withOpacity(0.1)),
              )
            ],
          ),
          SizedBox(height: 10),
          Text('00:00', style: style),
        ],
      ),
    );
  }
}

class ImagenDisco extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: 230,
      height: 230,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(200),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Image(image: AssetImage('assets/aurora.jpg')),
            Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.circular(100)),
            ),
            Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                  color: Color(0xff1c1c25),
                  borderRadius: BorderRadius.circular(100)),
            )
          ],
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200),
        gradient: LinearGradient(begin: Alignment.topLeft, colors: [
          Color(0xff484750),
          Color(0xff1e1c24),
        ]),
      ),
    );
  }
}
