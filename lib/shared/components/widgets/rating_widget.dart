import 'package:flutter/material.dart';

class RowRating extends StatelessWidget {
  const RowRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
      RatingContainer(text: "0+", color: Colors.red),
       RatingContainer(text: "7+", color: Colors.orange),
         RatingContainer(text: "7.5+", color: Colors.green),
       RatingContainer(text: "8+", color: const Color.fromARGB(255, 55, 138, 59)),
       RatingContainer(text: "8.5+", color: const Color.fromARGB(255, 42, 98, 43))
      ],
    );
  }
}


class RatingContainer extends StatelessWidget {
    RatingContainer({super.key, required this.text, required this.color});
 String text;
 Color color; 
  @override
  Widget build(BuildContext context) {
    return  Container(
          width: 50,
          height: 40,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child:   Padding(
            padding:const  EdgeInsets.all(10),
            child: Center(
              child: Text(
                text  ,
                style: const TextStyle(color: Colors.white,
                fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
        );
  }
}