import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String buttonText;

  const MyButton(this.buttonText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: null,
      child: Text(buttonText),
    );
    // GestureDetector(
    //   onTap: null,
    //   child: Padding(
    //     padding: const EdgeInsets.all(0.2),
    //     child: ClipRRect(
    //       // borderRadius: BorderRadius.circular(25),
    //       child: Container(
    //         // color: color,
    //         child: Center(
    //           child: Text(
    //             buttonText,
    //             style: const TextStyle(
    //               // color: textColor,
    //               fontSize: 25,
    //               fontWeight: FontWeight.bold,
    //             ),
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
