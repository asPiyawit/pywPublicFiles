import 'package:flutter/material.dart';

import '../widgets/wdg_drawer.dart';

class ScnProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mQSize = MediaQuery.of(context);
    var appBar = AppBar(
      title: Container(
        alignment: Alignment.bottomRight,
        child: Text(
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 4,
            fontSize: 20,
          ),
        ),
      ),
      elevation: 0,
    );
    //Widgets
    Widget _textLineWdg(String txt) {
      return Text(
        txt,
        style: TextStyle(letterSpacing: 1, fontSize: 18),
      );
    }

    Widget _mainTitle(String firstWord, String secondWord) {
      return Container(
        alignment: Alignment.topCenter,
        height: 60,
        child: RichText(
          text: TextSpan(
            style: TextStyle(letterSpacing: 1.5, fontSize: 38),
            children: <TextSpan>[
              TextSpan(
                text: firstWord,
              ),
              TextSpan(
                text: secondWord,
                style: TextStyle(color: Colors.blueGrey[400]),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      drawer: WdgDrawer(),
      appBar: appBar,
      body: Container(
        alignment: Alignment.center,
        width: mQSize.size.width,
        height: (mQSize.size.height -
            appBar.preferredSize.height -
            mQSize.padding.top),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: (mQSize.size.height -
                        appBar.preferredSize.height -
                        mQSize.padding.top) -
                    20,
                width: mQSize.size.width,
                padding: EdgeInsets.fromLTRB(30, 50, 30, 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    //background color of box
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 10.0, // soften the shadow
                      spreadRadius: 5.0, //extend the shadow
                    )
                  ],
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Image.asset(
                      //   '../assets/images/inuniform.jpg',
                      //   height: 300,
                      // ),
                      SizedBox(height: 10),
                      _mainTitle('Piyawit ', 'Prompradit'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
