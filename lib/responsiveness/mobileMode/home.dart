import 'package:flutter/material.dart';
import 'package:glo/pages/makeupPage.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  //variable declaration
  String makeupimg = 'makeup.png';
  String skincareimg = 'skin-care.png';
  String haircareimg = 'hair-care.png';
  String oralcareimg = 'oral-care.png';
  String perfumeimg = 'perfume.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Stack(
        children: [
          Positioned(
              top: 16,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                    'Shop',
                  style: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: 40.0,
                  ),
                ),
              ),
            ),


          Positioned(
            top: 100,
            left: 0,
            right: 0,
            bottom: 0,
            child: ListView(
              children: [Table(
                  columnWidths: {
                    0: FlexColumnWidth(1), //Create a table with  2 columns
                    1: FlexColumnWidth(1), //each having the same width
                  },
                  children: [
                    //row1
                    TableRow(
                      children: [
                          Padding(
                            padding: const EdgeInsets.all(50.0),
                              child: Container(
                                height: 100,
                                  child: Align(
                                    alignment: Alignment.center,
                                      child: Transform.scale(
                                        scale: 3,
                                        child: Image(image: AssetImage('resources/$makeupimg'),
                                        ),
                                      )
                                  )
                              ),

                          ),

                        Padding(
                          padding: const EdgeInsets.all(50.0),
                            //making the container pressable using gestureDetector
                            child: GestureDetector(
                              onTap: (){
                                Navigator.pushNamed(context, '/makeupPage');
                              },
                            child: Container(
                              height: 50,
                              width: 10,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.pinkAccent,
                                  width: 3.0,
                                ),
                              ),
                              child: Center(
                                  child: Text(
                                      'Makeup',
                                    style: TextStyle(
                                      fontSize: 22.0,
                                      color: Colors.pinkAccent
                                    ),
                                  ),
                              ),
                            ),
                            ),
                        ),
                      ],
                    ),

                    //row2
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(50.0),
                            child: Container(
                              height: 50,
                              width: 10,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.pinkAccent,
                                  width: 3.0,
                                ),
                              ),
                              child: Center(
                                  child: Text(
                                    'Skincare',
                                    style: TextStyle(
                                      fontSize: 22.0,
                                      color: Colors.pinkAccent,
                                    ),
                                  ),

                              ),
                            ),

                        ),

                        Padding(
                          padding: const EdgeInsets.all(50.0),
                            child: Container(
                                height: 100,
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Transform.scale(
                                      scale: 3,
                                      child: Image(image: AssetImage('resources/$skincareimg'),
                                      ),
                                    )
                                )
                            ),

                        ),
                      ],
                    ),

                    //row3
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Container(
                              height: 100,
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Transform.scale(
                                    scale: 3,
                                    child: Image(image: AssetImage('resources/$haircareimg'),
                                    ),
                                  )
                              )
                          ),

                        ),

                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Container(
                            height: 50,
                            width: 10,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.pinkAccent,
                                width: 3.0,
                              ),
                            ),
                            child: Center(
                                child: Text(
                                  'Haircare',
                                  style: TextStyle(
                                      fontSize: 22.0,
                                      color: Colors.pinkAccent
                                  ),
                                ),
                            ),
                          ),

                        ),
                      ],
                    ),

                    //row4
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Container(
                            height: 50,
                            width: 10,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.pinkAccent,
                                width: 3.0,
                              ),
                            ),
                            child: Center(
                                child: Text(
                                  'Oralcare',
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    color: Colors.pinkAccent,
                                  ),
                                ),
                            ),
                          ),

                        ),

                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Container(
                              height: 100,
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Transform.scale(
                                    scale: 3,
                                    child: Image(image: AssetImage('resources/$oralcareimg'),
                                    ),
                                  )
                              )
                          ),

                        ),
                      ],
                    ),

                    //row5
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Container(
                              height: 100,
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Transform.scale(
                                    scale: 3,
                                    child: Image(image: AssetImage('resources/$perfumeimg'),
                                    ),
                                  )
                              )
                          ),

                        ),

                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Container(
                            height: 50,
                            width: 10,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.pinkAccent,
                                width: 3.0,
                              ),
                            ),
                            child: Center(
                                child: Text(
                                  'Perfumes',
                                  style: TextStyle(
                                      fontSize: 22.0,
                                      color: Colors.pinkAccent
                                  ),
                                ),
                            ),
                          ),

                        ),
                      ],
                    ),
                  ],
                ),
              ]
            ),
          ),
        ]
      ),
    );
  }
}

//< > ()  : {} _ $ + & ? %