import 'package:flutter/material.dart';
// import 'package:glo/pages/onboarding1.dart';
import 'package:glo/pages/onboarding2.dart';

class Onboarding3 extends StatelessWidget {
  Onboarding3({Key? key}) : super(key: key);

  String onboard3img = 'onboarding3.png';

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
        //      //swipe to navigate left to next page
        //      //  Navigator.push(
        //      //    context,
        //      //    SlideLeftRoute(page: Shop),
        //      //  );
        //     } else if (details.primaryVelocity! > 0)
        //     {
        //       //swipe to navigate right to previous page
        //       Navigator.pop(
        //         context,
        //         SlideRightRoute(page: Onboarding2()),
        //       );
        //     }
        //     },
        Stack(
            children: <Widget>[
              //Increasing the size of the image
              Padding(
                padding: EdgeInsets.fromLTRB(400.0, 0.0, 300.0, 320.0),
                child: Transform.scale(
                  scale: 5.0,
                  child: Image(
                    image: AssetImage('resources/$onboard3img'),
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
                padding: const EdgeInsets.fromLTRB(450.0, 0.0, 5.0, 250.0),
                child: Center(
                  child: FractionallySizedBox(
                    widthFactor: 50.0, //50% of screen width
                    heightFactor: 20.0, //20% of screen height
                    child: Transform.scale(
                      scale: 1.5,
                      child: Image(
                        image: AssetImage('resources/$onboard3img'),
                      ),
                    ),
                  ),
                ),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(300.0, 300.0, 300.0, 100.0),
                  child: Text(
                    'Beauty Meets Sustainability',
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
                  padding: EdgeInsets.fromLTRB(300.0, 400.0, 300.0, 100.0),
                  child: Text(
                    'Beauty without compromise: our products are both eco-friendly '
                        'and effective. Embrace a cleaner, greener beauty routine '
                        'with us.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 70,
                left: 100,
                right: 100,
                child: SizedBox(
                  width: 1.0,
                  height: 70.0,
                  child: ElevatedButton(
                      onPressed: () {
                        //go to next page when pressed
                      },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    )
                  ),
                  child: const Text(
                      'Start',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  ),
                ),
              ),
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
//< > ()  : {} _ $ + & ? %