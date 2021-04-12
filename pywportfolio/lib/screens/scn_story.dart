import 'package:flutter/material.dart';

import '../widgets/wdg_drawer.dart';

class ScnStory extends StatelessWidget {
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

    void _showImage(context, String p) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Image.asset(
                    '../assets/images/$p',
                    height: mQSize.size.height * 0.7,
                  ),
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
    //Widgets

    Widget _mainTitle(String firstWord, String secondWord) {
      return Container(
        alignment: Alignment.topCenter,
        height: 60,
        child: RichText(
          text: TextSpan(
            style: TextStyle(
                letterSpacing: 1.5, fontSize: 46, fontWeight: FontWeight.bold),
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

    Widget _leftText(String t) {
      return Container(
        margin: EdgeInsets.only(bottom: 10, top: 10),
        alignment: Alignment.centerRight,
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
        ),
        width: MediaQuery.of(context).size.width * 0.3,
        height: 80,
        child: FittedBox(
          child: Text(
            t,
            style: TextStyle(
              fontSize: 30,
              fontFamily: "Raleway",
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      );
    }

    Widget _rightText(String t) {
      return Container(
        margin: EdgeInsets.only(bottom: 5, top: 5),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        width: MediaQuery.of(context).size.width * 0.5,
        height: 80,
        alignment: Alignment.centerLeft,
        child: FittedBox(
          child: Text(
            t,
            style: TextStyle(fontSize: 18, fontFamily: "Raleway"),
          ),
        ),
      );
    }

    Widget _storySentence(String t) {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: FittedBox(
          child: Text(
            t,
            style: TextStyle(
              fontSize: 20,
              fontFamily: "Raleway",
              color: Colors.white,
            ),
          ),
        ),
      );
    }

    Widget _image(String p) {
      return Container(
        margin: EdgeInsets.all(20),
        child: InkWell(
          onTap: () => _showImage(context, p),
          child: ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            child: Image.asset(
              '../assets/images/$p',
              height: 130,
            ),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration:
                            BoxDecoration(border: Border.all(width: 0.5)),
                        child: Image.asset(
                          '../assets/images/profilepic.png',
                          height: 190,
                        ),
                      ),
                      SizedBox(height: 10),
                      _mainTitle('Piyawit ', 'Prompradit'),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _leftText('Age'),
                          _rightText('31'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _leftText('Date of Birth'),
                          _rightText('23rd September 1989'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _leftText('Work Experience'),
                          _rightText(
                              'Cabin Crew for Thai Airways (7 years)\n\nCustomer Service Agent for Lufthansa (1 year)'),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.blueGrey[800],
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.5),
                                    blurRadius: 6.0, // soften the shadow
                                    spreadRadius: 3.0, //extend the shadow
                                  )
                                ]),
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: Column(
                              children: [
                                Text(
                                  'My Honest Story',
                                  style: TextStyle(
                                    fontSize: 45,
                                    color: Colors.orange[100],
                                  ),
                                ),
                                Text(
                                  'About Changing Path:',
                                  style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.green[200],
                                  ),
                                ),
                                Divider(),
                                _storySentence(
                                    '  I have always equally loved coding and English language.'),
                                _storySentence(
                                    'There was a time when I had to decide if I wanted to go on'),
                                _storySentence(
                                    'the programmer career path or become a flight attendant. '),
                                _storySentence(
                                    'I somehow chose the latter choice because of some conditions back then.'),
                                _image('inuniform.jpg')
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.blueGrey[800],
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.5),
                                    blurRadius: 6.0, // soften the shadow
                                    spreadRadius: 3.0, //extend the shadow
                                  )
                                ]),
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: Column(
                              children: [
                                _storySentence(
                                    'Unfortunately, after 8 years of obtaining experiences in Aviation,'),
                                _storySentence(
                                    'the COVID-19 pandemic severely hit the business worldwide.'),
                                _storySentence(
                                    'No one is allowed to freely fly internationally anymore.'),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.blueGrey[800],
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.5),
                                    blurRadius: 6.0, // soften the shadow
                                    spreadRadius: 3.0, //extend the shadow
                                  )
                                ]),
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: Column(
                              children: [
                                _storySentence(
                                    'Therefore, airlines companies around the world have to resize themselves.'),
                                _storySentence(
                                    'Thai Airways is one of them. So I joined the Voluntary Resignation Program'),
                                _storySentence(
                                    'because I think it was a good opportunity for me to try '),
                                _storySentence(
                                    'the other half of my interests which is programming'),
                                _storySentence(
                                    'since the COVID-19 is not going anywhere so soon.'),
                                _image('cv.jpg'),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.blueGrey[800],
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.5),
                                    blurRadius: 6.0, // soften the shadow
                                    spreadRadius: 3.0, //extend the shadow
                                  )
                                ]),
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: Column(
                              children: [
                                _storySentence(
                                    'Luckily, a friend of mine introduced me to ERP programming which'),
                                _storySentence(
                                    'sounds so right to me because it requires interpersonal skills such as:'),
                                _storySentence(
                                    'project time management, problem-solving and communication skills'),
                                _storySentence(
                                    'that I acquired from my previous job. As I\'m an open-minded and fast learner,'),
                                _storySentence(
                                    'I truely believe I could catch up and fit in the team in no time,'),
                                _storySentence(
                                    'when I get the opportunity to be part of it. Thank you for reading.'),
                              ],
                            ),
                          ),
                        ],
                      ),
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
