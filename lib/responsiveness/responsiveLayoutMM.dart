import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {

  //declaring different screen sizes
  final Widget onboarding1MobileView;
  final Widget onboarding1TabletView;
  // final Widget onboarding1DesktopView;

  const ResponsiveLayout({
    required this.onboarding1MobileView,
    required this.onboarding1TabletView,
    // required this.onboarding1DesktopView
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if (constraints.maxWidth < 600){
          return onboarding1MobileView;
        }else if (constraints.maxWidth < 1100){
          return onboarding1TabletView;

        }else {
          return Text('DesktopMode in construction');
        }
      },
    );
  }
}



//< > ()  : {} _ $ + & ? %