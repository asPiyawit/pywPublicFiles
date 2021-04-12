import 'package:flutter/material.dart';

import '../widgets/wdg_drawer.dart';
import '../widgets/wdg_mixedblock.dart';

class ScnAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mQSize = MediaQuery.of(context);
    var appBar = AppBar(
      title: Container(
        alignment: Alignment.bottomRight,
        child: Text(
          'Contact Me',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 4,
            fontSize: 20,
          ),
        ),
      ),
      elevation: 0,
    );

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
                padding: EdgeInsets.fromLTRB(80, 60, 50, 50),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(130),
                  ),
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
                    child: Center(
                  child: Column(
                    children: [
                      Container(
                        width: mQSize.size.width * 0.4,
                        child: WdgMixedBlock(
                          Colors.purple,
                          'online',
                          'contact',
                          'Email: aspiyawit@gmail.com',
                          'LINE ID: piyawitp',
                          'Facebook: facebook.com/piwitp',
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        width: mQSize.size.width * 0.6,
                        child: WdgMixedBlock(
                          Colors.lime,
                          'phone &',
                          'address',
                          'Phone: 0888068885',
                          'Address: 164/196 LPN Romklao, Klong Sam Prawet',
                          'Lat Krabang, Bangkok 10520',
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        width: mQSize.size.width * 0.8,
                        child: WdgMixedBlock(
                          Colors.teal,
                          'development',
                          'tools',
                          'Language: Flutter Framework (Dart)',
                          'IDE: Visual Studio Code',
                          'Coder: Piyawit Prompradit',
                        ),
                      ),
                    ],
                  ),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
