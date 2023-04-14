import 'package:flutter/material.dart';

class Onboarding2MobileView extends StatelessWidget {
  Onboarding2MobileView({Key? key}) : super(key: key);

  String onboard2img = 'onboarding2.png';

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body:
        //swiping capabilities
        // GestureDetector(
        // onHorizontalDragEnd: (DragEndDetails details)
        // {
        //   if(details.primaryVelocity! < 0)
        //   {
        //     Navigator.push(
        //       context,
        //       SlideLeftRoute(page: Onboarding3()),
        //     );
        //   } else if (details.primaryVelocity! > 0)
        //   {
        //     Navigator.pop(
        //       context,
        //       SlideRightRoute(page: Onboarding1()),
        //     );
        //   }
        //
        // },
        Stack(
          children: <Widget>[
            //Increasing the size of the image
            Padding(
              padding: EdgeInsets.fromLTRB(500.0, 240.0, 300.0, 300.0),
              child: Transform.scale(
                scale: 10.0,
                child: Image(
                  image: AssetImage('resources/$onboard2img'),
                ),
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.black.withOpacity(0.9),
            ),

            //making the image centered no matter screen size
            Padding(
              padding: const EdgeInsets.fromLTRB(380.0, 0.0, 300.0, 80.0),
              child: Center(
                child: FractionallySizedBox(
                  widthFactor: 50.0, //50% of screen width
                  heightFactor: 20.0, //20% of screen height
                  child: Transform.scale(
                    scale: 1.2,
                    child: Image(
                      image: AssetImage('resources/$onboard2img'),
                    ),
                  ),
                ),
              ),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(300.0, 380.0, 300.0, 100.0),
                child: Text(
                  'Bye, Bye, Queueing...',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),
              ),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(300.0, 500.0, 300.0, 100.0),
                child: Text(
                  'Say goodbye to endless beauty aisles and endless product options. '
                      'With easy navigation, and helpful recommendations, finding your '
                      'new go-to products has never been easier.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),
              ),
            ),

            //calling the page indicator class
            // const Positioned(
            //   left: 0,
            //   right: 0,
            //   bottom: 40,
            //   child: PageIndicator(),
            // ),

          ],
        ),
        // ),
      );

  }
}

//custom class to define the slide animation to Left
// class SlideLeftRoute extends PageRouteBuilder {
//   final Widget page;
//
//   SlideLeftRoute({required this.page})
//       : super(
//     transitionDuration: Duration(milliseconds: 1000),
//     pageBuilder: (context, animation, secondaryAnimation) => page,
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       var begin = Offset(1.0, 0.0);
//       var end = Offset.zero;
//       var tween = Tween(begin: begin, end: end);
//       var curvedAnimation = CurvedAnimation(
//         parent: animation,
//         curve: Curves.easeOut,
//       );
//       return SlideTransition(
//         position: tween.animate(curvedAnimation),
//         child: child,
//       );
//     },
//   );
// }
//
// //custom class to define the slide animation to Right
// class SlideRightRoute extends PageRouteBuilder {
//   final Widget page;
//
//   SlideRightRoute({required this.page})
//       : super(
//     transitionDuration: Duration(milliseconds: 1000),
//     pageBuilder: (context, animation, secondaryAnimation) => page,
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       var begin = Offset(1.0, 0.0);
//       var end = Offset.zero;
//       var tween = Tween(begin: end, end: begin);
//       var curvedAnimation = CurvedAnimation(
//         parent: animation,
//         curve: Curves.easeOut,
//       );
//       return SlideTransition(
//         position: tween.animate(curvedAnimation),
//         child: child,
//       );
//     },
//   );
// }

//< > ()  : {} _ $ + & ? %