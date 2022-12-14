import 'package:flutter/material.dart';
import 'package:languagelearningapp/Components/Container_item.dart';
import 'package:languagelearningapp/models/Number_model.dart';
class NumberPage extends StatelessWidget {
  const NumberPage({Key? key}) : super(key: key);

final List<item> numbers = const [
  item(image: 'assets/images/numbers/number_one.png', enName: 'One', jpName: 'ichi',sound: 'number_one_sound.mp3'),
  item(image: 'assets/images/numbers/number_two.png', enName: 'two', jpName: 'Ni',sound: 'number_two_sound.mp3'),
  item(image: 'assets/images/numbers/number_three.png', enName: 'three', jpName: 'San',sound: 'number_three_sound.mp3'),
  item(image: 'assets/images/numbers/number_four.png', enName: 'four', jpName: 'Shi',sound: 'number_four_sound.mp3'),
  item(image: 'assets/images/numbers/number_five.png', enName: 'five', jpName: 'GO',sound: 'number_five_sound.mp3'),
  item(image: 'assets/images/numbers/number_six.png', enName: 'six', jpName: 'Roku',sound: 'number_six_sound.mp3'),
  item(image: 'assets/images/numbers/number_seven.png', enName: 'seven', jpName: 'Sebun',sound: 'number_seven_sound.mp3'),
  item(image: 'assets/images/numbers/number_eight.png', enName: 'eight', jpName: 'Hachi',sound: 'number_eight_sound.mp3'),
  item(image: 'assets/images/numbers/number_nine.png', enName: 'nine', jpName: 'kyu',sound: 'number_nine_sound.mp3'),
  item(image: 'assets/images/numbers/number_ten.png', enName: 'ten', jpName: 'ju',sound: 'number_ten_sound.mp3'),

];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number'),
        backgroundColor: Color(0Xff46322B),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, num)
      {

        return Container_item(
          number: numbers[num],
          color: Color(0xffEF9235),
        itemType: 'numbers',
        );

      },
      ),
    );
  }
}

List<Widget> getList (List<item>numbers){
  List <Widget> itemsList = [];
  for(int i = 0 ; i<numbers.length ; i++)
  {
      itemsList.add(Container_item(number: numbers[i]
        ,color: Color(0xffEF9235),
        itemType: 'numbers',
      ),
      );
    }
  return itemsList;
}

