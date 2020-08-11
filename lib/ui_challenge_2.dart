import 'package:flutter/material.dart';
import 'package:ui_challenge2/custom_extensions.dart';
import 'package:ui_challenge2/images_stack.dart';
// import 'package:flutter_modifiers/flutter_modifiers.dart';

class UIChallenge2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var scrSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffFF80AB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Color(0xffDA3564),
        ),
        title: "Meetup".makeTextH1(),
        actions: [
          Icon(
            Icons.search,
            color: Color(0xffDA3564),
          ).padding()
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 90),
              width: scrSize.width,
              height: scrSize.height,
              color: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Today 9:00 PM',
                    style: TextStyle(color: Colors.pink),
                  ).padding(),
                  Text(
                    'Easy and Gentle Yoga',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: scrSize.height - 200,
              width: scrSize.width,
              decoration: BoxDecoration(
                  color: Color(0xffFFB0CD),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(85))),
              child: Padding(
                padding: EdgeInsets.only(top: scrSize.height - 330),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Today 8:00 PM',
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      'Practice French, English and Chinese',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.check_circle_outline,
                          color: Colors.pink,
                          size: 45,
                        ),
                        Icon(
                          Icons.close,
                          color: Colors.pink,
                          size: 45,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: scrSize.height - 380,
              width: scrSize.width,
              decoration: BoxDecoration(
                  color: Color(0xffFFD9E5),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(85))),
              child: Padding(
                padding: EdgeInsets.only(top: scrSize.height - 510),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Today 6:00 PM',
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      'Yoga and Meditation for Beginners',
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 108.0, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ProfilePics(),
                          SizedBox(width: 22),
                          Text(
                            'Marie and 4 others',
                            style: TextStyle(
                              color: Colors.pink,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: scrSize.height - 580,
              width: scrSize.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(85))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.pink,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(
                      Icons.queue_music,
                      color: Colors.pink[500],
                      size: 30,
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.pink,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(
                      Icons.graphic_eq_sharp,
                      color: Colors.pink[500],
                      size: 30,
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.pink,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.pink[500],
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
