import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../screens/filter.dart';
import '../../../screens/sort.dart';

class AppContainer extends StatelessWidget {
  const AppContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
          ),
        ],
        color: Colors.white,
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.sliders, size: 20,color: Color.fromARGB(190, 33, 149, 243),),
                onPressed: () {
                  showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25.0),
                      ),
                    ),
                    context: context,
                    elevation: 5,
                    isScrollControlled: true,
                    barrierColor: Colors.white,
                    backgroundColor: Colors.white,
                    showDragHandle: false,
                    builder: (context) => const FiltersScreen(),
                  );
                },
              ),
              const Text("Filters",
              style: TextStyle(color: Colors.blue,fontSize: 20, decoration:  TextDecoration.underline),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.arrowDownWideShort, color: Color.fromARGB(190, 33, 149, 243),),
                onPressed: () {
                  showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25.0),
                      ),
                    ),
                    context: context,
                    isScrollControlled: true,
                    elevation: 5,
                    backgroundColor: Colors.white,
                    builder: (context) => const SortScreen(),
                  );
                },
              ),
              const Text("Sort",
                  style: TextStyle(color: Colors.blue,fontSize: 20, decoration:  TextDecoration.underline),
                  ),
            ],
          ),
        ],
      ),
    );
  }
}
