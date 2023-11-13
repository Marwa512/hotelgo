import 'package:flutter/material.dart';

class SeperatedWidget extends StatelessWidget {
  const SeperatedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
width: double.infinity,
      color: Colors.grey,
      child: const SizedBox(),
    );
  }
}