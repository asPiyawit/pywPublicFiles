import 'package:flutter/material.dart';
import '../widgets/wdg_drawer.dart';

import '../widgets/wdg_mixedblock.dart';

class ScnHome extends StatelessWidget {
  void _showAlertDialog(context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return alert dialog object
        return AlertDialog(
          title: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    //background color of box
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 5.0, // soften the shadow
                      spreadRadius: 1.0, //extend the shadow
                    )
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    '../assets/images/contactpic.jpg',
                    width: 120,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Icon(Icons.email_outlined),
                  SizedBox(width: 5),
                  new Text(
                    "aspiyawit@gmail.com",
                    style: TextStyle(letterSpacing: 1.5),
                  ),
                ],
              ),
              Divider(),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(Icons.phone),
                  SizedBox(width: 5),
                  new Text(
                    "08888068885",
                    style: TextStyle(letterSpacing: 1.5),
                  ),
                ],
              ),
              Divider(),
            ],
          ),
          //content: new Text("Alert Dialog body"),
          actions: <Widget>[
            new OutlinedButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showTOEIC(context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  Container(
                    child: Text(
                      'My Recent TOEIC Score',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Anton'),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        //background color of box
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 5.0, // soften the shadow
                          spreadRadius: 1.0, //extend the shadow
                        )
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        '../assets/images/TOEIC.jpg',
                        width: 600,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      '(was taken in 2017 -> can retake upon request)',
                      style: TextStyle(fontSize: 13),
                    ),
                  )
                ],
              ),
            ],
          ),
          //content: new Text("Alert Dialog body"),
          actions: <Widget>[
            new OutlinedButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var mQSize = MediaQuery.of(context);
    var appBar = AppBar(
      title: Container(
        alignment: Alignment.bottomRight,
        child: Text(
          'Piyawit Prompradit',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 4,
            fontSize: 20,
          ),
        ),
      ),
      elevation: 0,
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: () => _showAlertDialog(context),
            tooltip: 'Contact',
          ),
        ),
      ],
    );
    //Widgets

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
            crossAxisAlignment: CrossAxisAlignment.end,
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
                    topLeft: Radius.circular(130),
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
                child: GridView(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 500,
                    childAspectRatio: 3 /
                        2, //(heigh&width ratio 3/2) So the heigh will start with 300 as the width is 200
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: WdgMixedBlock(
                          Colors.red,
                          'brief',
                          'introduction',
                          'Former cabin crew who was affected by the COVID-19 pandemic',
                          'With passion in computer programming, I\'m looking forward to',
                          'taking part in this programmer field of job with excitement'),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          WdgMixedBlock(
                              Colors.blue,
                              'general',
                              'strengths',
                              '- Interpersonal, open-minded, fast-learning and positive',
                              '- Experienced in working under pressure and delivering tasks on time',
                              '- Upper-intermediate English skills with TOEIC score of 955'),
                          Center(
                            child: OutlinedButton(
                              onPressed: () => _showTOEIC(context),
                              child: Container(
                                alignment: Alignment.center,
                                height: 40,
                                width: 170,
                                child: Text(
                                  'Recent TOEIC Score',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: WdgMixedBlock(
                        Colors.green,
                        'computer',
                        'skills',
                        '- Decent OOP knowledge',
                        '- Flutter Framework(Self-taught)',
                        '- Basics of PHP+MySQL Database, HTML, Dart and C#',
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: WdgMixedBlock(
                          Colors.amber,
                          'work',
                          'experience',
                          'Cabin Crew in Business Class at Thai Airways (SEP 2018 - APR 2021)',
                          'Cabin Crew in Economy Class at Thai Airways (MAR 2014 - AUG 2018)',
                          'Customer Service Agent at Lufthansa (APR 2013 - FEB 2014)'),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            '../assets/images/hardworker.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: WdgMixedBlock(
                          Colors.purple,
                          'interests',
                          '& hobbies',
                          '- Interested in development and technology',
                          '- Taking online courses related to computer programming',
                          '- Learning the latest trends from new apps and games'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
