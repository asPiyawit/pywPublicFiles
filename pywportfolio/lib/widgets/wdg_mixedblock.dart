import 'package:flutter/material.dart';
import './wdg_pbar.dart';

class WdgMixedBlock extends StatelessWidget {
  final Color color;
  final String titleOne;
  final String titleTwo;
  final String paraOne;
  final String paraTwo;
  final String paraThree;

  WdgMixedBlock(this.color, this.titleOne, this.titleTwo, this.paraOne,
      this.paraTwo, this.paraThree);
  @override
  Widget build(BuildContext context) {
    Widget textLineWdg(String txt) {
      return Text(
        txt,
        style: TextStyle(letterSpacing: 1, fontSize: 18),
      );
    }

    Widget mainTitle(String firstWord, String secondWord) {
      return Container(
        alignment: Alignment.topLeft,
        height: 60,
        child: RichText(
          text: TextSpan(
            style: TextStyle(
              letterSpacing: 1.5,
              fontSize: 38,
              color: Colors.black,
            ),
            children: <TextSpan>[
              TextSpan(
                text: '$firstWord ',
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

    Widget mainParagraph(
        Color color, String paraOne, String paraTwo, String paraThree) {
      return Container(
        height: 100,
        child: Row(
          children: [
            SizedBox(
              width: 4,
            ),
            WdgPBar(
              barMajorColor: Colors.black,
              barMinorColor: color,
              barMajorHeight: 100,
              barMinorHeight: 70,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  textLineWdg(paraOne),
                  textLineWdg(paraTwo),
                  paraThree != null ? textLineWdg(paraThree) : null,
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget mixedBlock(Color color, String titleOne, String titleTwo,
        String paraOne, String paraTwo, String paraThree) {
      return FittedBox(
        fit: BoxFit.fitWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            mainTitle(titleOne, titleTwo),
            SizedBox(
              height: 10,
            ),
            mainParagraph(color, paraOne, paraTwo, paraThree),
          ],
        ),
      );
    }

    return mixedBlock(color, titleOne, titleTwo, paraOne, paraTwo, paraThree);
  }
}
