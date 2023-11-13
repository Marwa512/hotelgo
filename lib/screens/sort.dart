import 'package:flutter/material.dart';
import 'package:hotelsgo/shared/components/widgets/list_tile.dart';
import 'package:hotelsgo/shared/components/widgets/seperated_widger.dart';

class SortScreen extends StatelessWidget {
  const SortScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
     padding: const EdgeInsets.all(16.0),
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child:   Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
             Row(
            children: [
              const Spacer(),
                const Text(
                  'Sort by',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                IconButton(
                  icon:const Icon(Icons.close), onPressed: () { 
                       Navigator.pop(context);  
                   } ,
                 
                   
                )
            ],
          ),
       CustomListTile(title: "Our Recommendation"),
       
      const SeperatedWidget(),
        CustomListTile(title: "Rating and Recommended"),
      const SeperatedWidget(),
        CustomListTile(title: "Price and Recommended"),
      const SeperatedWidget(),
        CustomListTile(title: "Distance and Recommended"),
      const SeperatedWidget(),
        CustomListTile(title: "Rating only"),
      const SeperatedWidget(),
        CustomListTile(title: "Price only"),
      const SeperatedWidget(),
        CustomListTile(title: "Distance only"),
      const SeperatedWidget(),
        ],
      ),
    );
  }
}


