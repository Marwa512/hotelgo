import 'package:flutter/material.dart';
import 'package:hotelsgo/shared/components/widgets/seperated_widger.dart';

import '../shared/components/widgets/rating_widget.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Reset',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                const Spacer(),
                const Text(
                  'Filters',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(children: [
              const Text(
                "PRICE PER NIGHT",
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Container(
                width: 60,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 2.0, //
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child:const Center(
                  child: Text(
                    "540+\$",
                  ),
                ),
              ),
            ]),
            Slider(
              value: 540,
              min: 20,
              max: 540,
              onChanged: (double value) {},
              thumbColor: Colors.white,
            ),
            const Row(
              children: [
                Text(
                  "20 \$",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text(
                  "540 \$",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "RATING",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const RowRating(),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "HOTEL CLASS",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Ratingstar(),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "DISTANCE FROM",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SeperatedWidget(),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Text(
                  "Location",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18.0,
                  ),
                ),
                Spacer(),
                Text(
                  "city center",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18.0,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const SeperatedWidget(),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue.shade700,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Show results",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
              ),
            )
          ]),
    );
  }
}

class Ratingstar extends StatelessWidget {
  const Ratingstar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.amber),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star_half_rounded,
                  color: Color.fromARGB(80, 255, 193, 7), size: 18),
              Icon(Icons.star_rounded, color: Colors.amber, size: 18)
            ],
          ),
        ),
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.amber),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star_rounded, color: Colors.amber, size: 18),
              Icon(Icons.star_rounded, color: Colors.amber, size: 18)
            ],
          ),
        ),
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.amber),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star_rounded, color: Colors.amber, size: 18),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star_rounded, color: Colors.amber, size: 18),
                  Icon(Icons.star_rounded, color: Colors.amber, size: 18)
                ],
              ),
            ],
          ),
        ),
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.amber),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star_rounded, color: Colors.amber, size: 18),
                  Icon(Icons.star_rounded, color: Colors.amber, size: 18),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star_rounded, color: Colors.amber, size: 18),
                  Icon(Icons.star_rounded, color: Colors.amber, size: 18)
                ],
              ),
            ],
          ),
        ),
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.amber),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star_rounded, color: Colors.amber, size: 18),
                  Icon(Icons.star_rounded, color: Colors.amber, size: 18),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star_rounded,
                    color: Colors.amber,
                    size: 18,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star_rounded, color: Colors.amber, size: 18),
                  Icon(Icons.star_rounded, color: Colors.amber, size: 18)
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
