import 'package:flutter/material.dart';
import 'package:languagelearningapp/Components/Container_item.dart';
import '../models/Number_model.dart';
class Family_member_page extends StatelessWidget {
  const Family_member_page({Key? key}) : super(key: key);

  final List<item> family_members = const [
    item(image: 'assets/images/family_members/family_father.png', enName: 'father', jpName: 'Chichioya',sound: 'father.wav'),
    item(image: 'assets/images/family_members/family_mother.png', enName: 'Mother', jpName: 'Hahoya',sound: 'mother.wav'),
    item(image: 'assets/images/family_members/family_grandfather.png', enName: 'Grand father', jpName: 'ojisan',sound: 'grand father.wav'),
    item(image: 'assets/images/family_members/family_grandmother.png', enName: 'Grand mother', jpName: 'Sobo',sound: 'grand mother.wav'),
    item(image: 'assets/images/family_members/family_son.png', enName: 'Son', jpName: 'San',sound: 'son.wav'),
    item(image: 'assets/images/family_members/family_daughter.png', enName: 'daughter', jpName: 'Musume',sound: 'daughter.wav'),
    item(image: 'assets/images/family_members/family_older_brother.png', enName: 'older bother', jpName: 'Nisan',sound: 'older bother.wav'),
    item(image: 'assets/images/family_members/family_older_sister.png', enName: 'older sister', jpName: 'Ane',sound: 'older sister.wav'),
    item(image: 'assets/images/family_members/family_younger_brother.png', enName: 'six', jpName: 'Roku',sound: 'younger brohter.wav'),
    item(image: 'assets/images/family_members/family_younger_sister.png', enName: 'seven', jpName: 'Sebun',sound: 'younger sister.wav'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Members'),
        backgroundColor: Color(0Xff46322B),
      ),
      body: ListView.builder(
        itemCount: family_members.length,
        itemBuilder: (context, num)
        {
          print(num);
          return Container_item(
            number: family_members[num],
            color: Color(0Xff5D8940),
            itemType: 'family_members',
          );

        },
      ),
      );
  }
}
