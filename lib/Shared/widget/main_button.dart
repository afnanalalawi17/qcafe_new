import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import '../style/Text_style.dart';

class MainButton extends StatelessWidget {
  final String? text;
  final VoidCallback? press;
  const MainButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [Color(0xffCDA349), Color(0xffDCB666)  ],
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            stops: [0.0, 8.2],
          ),
        ),
        child: Center(
          child: Text(
            text!.tr,
            style: kWhite_text,
          ),
        ),
      ),
    );
  }
}
