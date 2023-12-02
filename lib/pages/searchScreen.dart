import 'package:flutter/material.dart';
import 'package:glo/models/makeup.dart';
import 'package:glo/pages/productDetails.dart';

class SearchScreen extends StatefulWidget {
  //MakeUp makeUpSearch;
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  //dummy list for products
  static List<MakeUp> mainProductList = [
    MakeUp(
        imagePath: 'lib/images/blush.png',
        name: 'Item 1 ',
        description: 'This is a description for item 1',
        price: '1500'
    ),
    MakeUp(
        imagePath: 'lib/images/brush.png',
        name: 'Item 2 ',
        description: 'This is a description for item 2',
        price: '1100'
    ),
    MakeUp(
        imagePath: 'lib/images/hair-shampoo.png',
        name: 'Item 3 ',
        description: 'This is a description for item 3',
        price: '1700'
    ),
    MakeUp(
        imagePath: 'lib/images/lipstick.png',
        name: 'Item 4 ',
        description: 'This is a description for item 4',
        price: '1500'
    ),
    MakeUp(
        imagePath: 'lib/images/lotion.png',
        name: 'Item 5 ',
        description: 'This is a description for item 5',
        price: '500'
    ),
    MakeUp(
        imagePath: 'lib/images/perfume.png',
        name: 'Item 6 ',
        description: 'This is a description for item 6',
        price: '300'
    ),
  ];

  //creating the list that we are going to display and filter
  List<MakeUp> displayList = List.from(mainProductList);

  void updateList(String value){
    //This is a function to filter out the search list
    setState(() {
      displayList = mainProductList
          .where((element) =>
            element.name!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Search for a product',
              style: TextStyle(
                color: Colors.pink,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              onChanged: (value) => updateList(value),
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                hintText: 'eg: Cerave sunblock', prefixIcon: Icon(Icons.search), prefixIconColor: Colors.pink
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              //function to display a text in case we do not get a result
              child: displayList.length == 0 ? Center(child: Text('No results found', style: TextStyle(color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.bold,),))
                  :ListView.builder(
                    itemCount: displayList.length,
                    itemBuilder: (context, index) =>InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ProductDetails(makeUpProduct: displayList[index],)),
                        );
                      },
                      child: ListTile(
                        contentPadding: EdgeInsets.all(8.0),
                        title: Text(displayList[index].name!, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                        subtitle: Text(displayList[index].price!, style: TextStyle(color: Colors.white60),),
                        //leading: Image.asset(widget.makeUpSearch.imagePath),
                      ),
                    ),
                  ),
            )
          ],
        ),
      ),
    );
  }
}


//< > ()  : {} _ $ + & ? %