import 'package:flutter/material.dart';
import 'package:glo/pages/onboarding1.dart';
import 'package:glo/pages/onboarding2.dart';
import 'package:glo/pages/onboarding3.dart';
import 'package:glo/pages/makeupPage.dart';
import 'package:glo/responsiveness/mobileMode/onboarding1MM.dart';
import 'package:glo/responsiveness/mobileMode/onboarding2MM.dart';
import 'package:glo/responsiveness/mobileMode/onboarding3MM.dart';
import 'package:glo/responsiveness/tabletMode/onboarding1TM.dart';
import 'package:glo/responsiveness/responsiveLayoutMM.dart';



void main() {

  final PageController controller = PageController();
  //calling the responsive function for onboarding1
  // ResponsiveLayout(onboarding1MobileView: Onboarding1MobileView(), onboarding1TabletView: Onboarding1TabletView(),);

  runApp(MyApp());
}

//Creating MyApp class
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Glo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Stack(
          children: [
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: ResponsiveLayout(onboarding1MobileView: Onboarding1MobileView(), onboarding1TabletView: Onboarding1TabletView())),
            PageSelector(),
          ],
        ),
      routes: {
        'makeupPage': (context) => const MakeupPage(),
      },

    );
  }
}



//adjust these parameters
//widgets to be used in the PageSelector class
List<Widget> widgets = [
  Onboarding3MobileView(),
  Onboarding2MobileView(),
  Onboarding1MobileView(),

];
//class to create a dotted page navigator
class PageSelector extends StatefulWidget {
  const PageSelector({Key? key}) : super(key: key);

  @override
  State<PageSelector> createState() => _PageSelectorState();
}

class _PageSelectorState extends State<PageSelector>
    with SingleTickerProviderStateMixin
{
  late final TabController controller;
  int _index = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: widgets.length,
      initialIndex: _index,
      vsync: this,
    );
  }

  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          TabBarView(
            controller: controller,
            children: widgets,

          ),
          Positioned(
            bottom: 40,
            child: TabPageSelector(
              controller: controller,
              color: Colors.black38,
              selectedColor: Colors.pinkAccent,
            ),
          ),
        ],
      ),
      floatingActionButton: ButtonBar(
        children: [
          FloatingActionButton.small(
            backgroundColor: Colors.pinkAccent,
            onPressed: (){
              (_index != widgets.length - 1) ? _index++ : _index = 0;
              controller.animateTo(_index);
            },
            hoverElevation: 0,
            elevation: 0,
            child: const Icon(Icons.navigate_next),
          )
        ],
      ),
    );
  }
}



//< > ()  : {} _ $ + & ? %