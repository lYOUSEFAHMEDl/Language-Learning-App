import 'package:flutter/material.dart';
import 'package:languagelearningapp/models/Number_model.dart';


import '../Components/Container_item.dart';
import '../Components/Phrases_item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);

  final List<item> phrases = const [
   item(enName: 'hey', jpName: 'bye', sound: 'are_you_coming.wav'),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phrases'),
        backgroundColor: Color(0Xff46322B),
      ),
      body: ListView.builder(
          itemCount: phrases.length,
        itemBuilder: (context, num)
        {
          print(num);
          return Phrases_item(
            number : phrases [num],
            color: Color(0Xff52AFD6),
            itemType: 'phrases',
          );

        },
      ),

    );
  }
}
