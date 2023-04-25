import 'package:flutter/material.dart';

class Onboarding2MobileView extends StatelessWidget {
  Onboarding2MobileView({Key? key}) : super(key: key);

  String onboard2img = 'onboarding2.png';
  // final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(

        body:
        //swiping capabilities
        // GestureDetector(
        //   onHorizontalDragEnd: (DragEndDetails details)
        //   {
        //     if(details.primaryVelocity! < 0)
        //     {
        //       Navigator.push(
        //         context,
        //         SlideLeftRoute(page: Onboarding2()),
        //       );
        //     }
        //   },

        Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 280.0, 0.0, 0.0),
              child: Center(
                child: FractionallySizedBox(
                  widthFactor: 30.0, //% of screen width
                  heightFactor: 30.0, //% of screen height
                  child: Transform.scale(
                    scale: 2.7,
                    child: Image(
                      image: AssetImage('resources/$onboard2img'),
                    ),
                  ),
                ),
              ),
            ),

            FractionallySizedBox(
              widthFactor: 100.0, //% of screen width
              heightFactor: 100.0, //% of screen height
              child: Container(
                color: Colors.black.withOpacity(0.9),
              ),
            ),

            //making the top image centered no matter screen size
            Padding(
              padding: const EdgeInsets.fromLTRB(40.0, 40.0, 0.0, 20.0),
              child: Center(
                child: FractionallySizedBox(
                  widthFactor: 10.0, //50% of screen width
                  heightFactor: 10.0, //20% of screen height
                  child: Transform.scale(
                    scale: 1.3,
                    child: Image(
                      image: AssetImage('resources/$onboard2img'),
                    ),
                  ),
                ),
              ),
            ),

            const Positioned(
              bottom: 160,
              left: 100,
              right: 100,

              child: Text(
                'Bye, Bye, Queueing...',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
              ),
            ),


            const Positioned(
              bottom: 80,
              left: 100,
              right: 100,

              child: Text(
                'Say goodbye to endless beauty aisles and endless product options. '
                       'With easy navigation, and helpful recommendations, finding your '
                       'new go-to products has never been easier.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  // fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
              ),
            ),
          ],
        ),
        // ),
      );

  }
}

//< > ()  : {} _ $ + & ? %