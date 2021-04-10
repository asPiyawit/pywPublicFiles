import 'package:flutter/material.dart';

import '../widgets/wdg_drawer.dart';

class ScnContact extends StatelessWidget {
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
                child: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
