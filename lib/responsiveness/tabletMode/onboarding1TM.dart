import 'package:flutter/material.dart';

class Onboarding1TabletView extends StatelessWidget {
  Onboarding1TabletView({Key? key}) : super(key: key);

  String onboard1img = 'onboarding1.png';
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
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 140.0, 440.0),
              child: Center(
                child: FractionallySizedBox(
                  widthFactor: 30.0, //50% of screen width
                  heightFactor: 30.0, //20% of screen height
                  child: Transform.scale(
                    scale: 2.5,
                    child: Image(
                      image: AssetImage('resources/$onboard1img'),
                    ),
                  ),
                ),
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.black.withOpacity(0.9),
            ),

            //making the top image centered no matter screen size
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 300.0),
              child: Center(
                child: FractionallySizedBox(
                  widthFactor: 10.0, //50% of screen width
                  heightFactor: 10.0, //20% of screen height
                  child: Transform.scale(
                    scale: 1.3,
                    child: Image(
                      image: AssetImage('resources/$onboard1img'),
                    ),
                  ),
                ),
              ),
            ),

            const Positioned(
              bottom: 110,
              left: 100,
              right: 100,

              child: Text(
                'Welcome to Glo',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),


            const Positioned(
              bottom: 80,
              left: 100,
              right: 100,

              child: Text(
                'Get ready for a beauty revolution. Looking to upgrade your '
                    'beauty routine? Our app is the ultimate destination for '
                    'all your beauty needs.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.0,
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
//custom class to define the slide animation
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