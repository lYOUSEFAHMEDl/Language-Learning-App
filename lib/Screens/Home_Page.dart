import 'package:flutter/material.dart';
import 'package:languagelearningapp/Components/Category_item.dart';
import 'package:languagelearningapp/Screens/Family_member_page.dart';
import 'package:languagelearningapp/Screens/Numbers_Page.dart';
import 'package:languagelearningapp/Screens/Phrases_Page.dart';
import 'Colors_page.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Toku', style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,

        ),
        ),
        backgroundColor:Color(0Xff46322B),
      ),
      body: Column(
        children: [
          Category(
            color: Color(0XffEF9235),
            text: 'Number',
            ontap: () {
             Navigator.push(context,
                 MaterialPageRoute(builder: (BuildContext context)
             {
             return NumberPage();
             }
             )
             );
            },
          ),

          Category(
            color: Color(0Xff5D8940),
            text: 'Family Members',
            ontap: () {
             Navigator.push(context,
                 MaterialPageRoute( builder: (BuildContext){
                   return Family_member_page();
                 }
             ),
             );
            },
          ),

          Category(
            color: Color(0Xff854CAE),
            text: 'Colors',
            ontap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
                return ColorsPage();
              }
              ),
              );
            },
          ),

          Category(
            color: Color(0Xff52AFD6),
            text: 'Phrases',
            ontap: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (BuildContext) {
                return PhrasesPage();
              }
              ),
              );
            },
          ),

        ],
      ),

    );
  }
}
