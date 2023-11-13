import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomListTile extends StatelessWidget {
  CustomListTile({super.key, required this.title});
  String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 20.0,
          ),
        ),
     
      ),
    );
  }
}
