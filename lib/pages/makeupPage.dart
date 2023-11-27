//This is a class to display products with their details
import 'package:flutter/material.dart';
import 'package:glo/components/makeupTile.dart';
import 'package:glo/models/makeUp.dart';

class MakeupPage extends StatefulWidget {
  const MakeupPage({Key? key}) : super(key: key);

  @override
  State<MakeupPage> createState() => _MakeupPageState();
}

class _MakeupPageState extends State<MakeupPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //search bar
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 18),
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8), border: Border.all(color: Colors.pinkAccent)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('search', style: TextStyle(color: Colors.grey),),
              Icon(Icons.search, color: Colors.grey,),
            ],
          ),
        ),

        //A message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Row(
            children: [
              Text('Shop/', style: TextStyle(color: Colors.grey),),
              Text('Makeup', style: TextStyle(color: Colors.pink),),
            ],
          ),
        ),

        const SizedBox(height: 10,),

        //Content of products
        Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, //number of columns
              crossAxisSpacing: 4.0, //space between columns
              mainAxisSpacing: 4.0, //space between rows
            ),
            itemCount: 6,
            itemBuilder: (context, index){
              //create a makeup object
              MakeUp makeupObj =  MakeUp(name: 'EarthGlow lip scrub', price: 'Ksh. 500', imagePath: 'lib/images/blush.png', description: 'Description');
              return MakeupTile(
                makeUp: makeupObj,
                );
              },
          ),
        ),
      ],
    );
  }
}
