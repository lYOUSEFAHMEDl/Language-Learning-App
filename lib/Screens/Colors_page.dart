import 'package:flutter/material.dart';

import '../Components/Container_item.dart';
import '../models/Number_model.dart';
class ColorsPage extends StatelessWidget {
  final List<item> Colors = const [
    item(image: 'assets/images/colors/color_black.png', enName: 'Black', jpName: 'Chichioya',sound: 'black.wav'),
    item(image: 'assets/images/colors/color_brown.png', enName: 'Mother', jpName: 'Hahoya',sound: 'brown.wav'),
    item(image: 'assets/images/colors/color_dusty_yellow.png', enName: 'Dusty yellow', jpName: 'ojisan',sound: 'dusty yellow.wav'),
    item(image: 'assets/images/colors/color_gray.png', enName: 'gray', jpName: 'Sobo',sound: 'gray.wav'),
    item(image: 'assets/images/colors/color_green.png', enName: 'green', jpName: 'San',sound: 'green.wav'),
    item(image: 'assets/images/colors/color_red.png', enName: 'red', jpName: 'Musume',sound: 'red.wav'),
    item(image: 'assets/images/colors/color_white.png', enName: 'white', jpName: 'Nisan',sound: 'white.wav'),
    item(image: 'assets/images/colors/yellow.png', enName: 'yellow', jpName: 'Ane',sound: 'yellow.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Members'),
        backgroundColor: Color(0Xff46322B),
      ),
      body: ListView.builder(
        itemCount: Colors.length,
        itemBuilder: (context, num)
        {
          print(num);
          return Container_item(
            number: Colors[num],
            color: Color(0Xff854CAE),
            itemType: 'colors',
          );

        },
      ),
    );
  }
}
