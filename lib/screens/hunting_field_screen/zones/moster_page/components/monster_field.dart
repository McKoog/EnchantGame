import 'package:flutter/material.dart';

class MonsterField extends StatelessWidget {
  const MonsterField({Key? key,required this.width,required this.assetImageLink}) : super(key: key);

  final double width;
  final String assetImageLink;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: width - 200,
      width: width - 200,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.43),
              spreadRadius: 10,
              blurRadius: 100)
        ],
      ),
      margin: const EdgeInsets.all(32.0),
      child: Image.asset(assetImageLink),
    );
  }
}
