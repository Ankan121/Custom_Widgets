import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_widget.dart';


void main(){
  runApp(mayapp());
}
class mayapp extends StatefulWidget {
  const mayapp({super.key});

  @override
  State<mayapp> createState() => _mayappState();
}

class _mayappState extends State<mayapp> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            ListTile(
              title: Text("others"),
              leading: custiom_radio(
                text: 'page 1',
                group: gender,
                changed: (value){
                  setState(() {
                    gender = value.toString();
                  });
                },
              ),
            ),
            ListTile(
              title: Text("no"),
              leading: custiom_radio(
                text: 'page2',
                group: gender,
                changed: (value){
                  setState(() {
                    gender = value.toString();
                  });
                },
              ),
            ),
            ElevatedButton(onPressed: (){},
                child: Text('data')
            ),
            buttom(
              onpresed: () {},
              text: 'no',)

          ],
        ),
      ),
    );
  }
}
