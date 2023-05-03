import 'package:flutter/material.dart';
import 'package:glo/responsiveness/mobileMode/home.dart';

class Onboarding3MobileView extends StatelessWidget {
  Onboarding3MobileView({Key? key}) : super(key: key);

  String onboard3img = 'onboarding3.png';
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
                  widthFactor: 3.0, //% of screen width
                  heightFactor: 3.0, //% of screen height
                  child: Transform.scale(
                    scale: 2.7,
                    child: Image(
                      image: AssetImage('resources/$onboard3img'),
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
                      image: AssetImage('resources/$onboard3img'),
                    ),
                  ),
                ),
              ),
            ),

            const Positioned(
              bottom: 240,
              left: 100,
              right: 100,

              child: Text(
                'Beauty Meets Sustainability',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
              ),
            ),

            const Positioned(
              bottom: 160,
              left: 100,
              right: 100,

              child: Text(
                'Beauty without compromise: our products are both eco-friendly '
                       'and effective. Embrace a cleaner, greener beauty routine '
                       'with us.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  // fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
              ),
            ),

            Positioned(
              bottom: 75,
              left: 100,
              right: 100,
              child: SizedBox(
                width: 1.0,
                height: 60.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink[600],
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

//< >  ()  : {} _ $ + & ? %