
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class custiom_radio extends StatefulWidget {
  final String? text;
  final String? group;
  final ValueChanged? changed;
  const custiom_radio({super.key, this.text, this.group, this.changed});

  @override
  State<custiom_radio> createState() => _custiom_radioState();
}

class _custiom_radioState extends State<custiom_radio> {

  String? gender;

  @override
  Widget build(BuildContext context) {
    return Radio(
        value: widget.text,
        groupValue: widget.group,
        onChanged: widget.changed,
    );
  }
}

class Custom_button extends StatefulWidget {
  final String? text;
  final VoidCallback onpressed;

  const Custom_button({super.key, this.text, required this.onpressed, });

  @override
  State<Custom_button> createState() => _Custom_buttonState();
}

class _Custom_buttonState extends State<Custom_button> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: widget.onpressed,
        child: null,

    );
  }
}
class buttom extends StatelessWidget {
  final VoidCallback onpresed;
  final String? text;
  const buttom({super.key, required this.onpresed, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onpresed,
        child: Text(text!,),
    );
  }
}

