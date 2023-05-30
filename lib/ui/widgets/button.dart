import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/ui/theme.dart';

class MyButton extends StatelessWidget {
  final String lable;
  final Function()? onTap;

  const MyButton({Key? key, required this.lable, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:()=> onTap!(),
      child: Container(
        width: 100,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: primaryColor),
        child: Container(
            padding: EdgeInsets.all(0),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                lable,
                style: TextStyle(color: Colors.white),
              ),
            )),
      ),
    );
  }
}
