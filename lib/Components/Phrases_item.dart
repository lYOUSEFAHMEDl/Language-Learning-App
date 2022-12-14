import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:languagelearningapp/models/Number_model.dart';


class Phrases_item extends StatelessWidget {

  const Phrases_item({Key? key,required this.number,required this.color, required this.itemType}) : super(key: key);

  final item number;
  final Color color;
  final String itemType ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,

      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(number.jpName, style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                ),
                ),
                Text(number.enName, style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                ),
                ),
              ],
            ),
          ),

          Spacer(
            flex: 1,
          ),

          GestureDetector(

            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(

                  onPressed: (){
                    try{

                      AudioCache player = AudioCache(prefix: 'assets/sounds/$itemType/');
                      player.play(number.sound);

                    }catch(ex){
                      print(ex);
                    }

                  },
                  icon: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 30,
                  )
              ),
            ),
          ),
        ],
      ),

    );

  }
}