import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotelsgo/shared/bloc/cubit.dart';
import 'package:hotelsgo/shared/bloc/states.dart';

import '../models/hotels.dart';
import '../shared/components/widgets/custome_app_container.dart';

class HotelListScreen extends StatelessWidget {
  const HotelListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HotelCubit, HotelStates>(
      listener: (context, state) => {},
      builder: (context, state) {
        List<Hotel> hotels = HotelCubit.get(context).HotelModel;
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Stack(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: hotels.length,
                  itemBuilder: (context, index) {
                    return HotelCard(hotel: hotels[index]);
                  },
                ),
                const Align(
                    alignment: AlignmentDirectional.topCenter,
                    child: AppContainer()),
              ],
            ),
          ),
          floatingActionButton: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                  height: 60,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(
                       fit: BoxFit.cover,
                      image: NetworkImage(
                          
                        "https://image.freepik.com/free-vector/3d-top-view-map-with-destination-location-point_34645-1081.jpg?w=1800",
                      ),
                    ),
                  )),
              SizedBox(
                height: 30,
                width: 60,
                child: FloatingActionButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    onPressed: () {},
                    child: const Text(
                      "Map",
                      style: TextStyle(
                          decoration: TextDecoration.underline, fontSize: 15),
                    )),
              ),
            ],
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
        );
      },
    );
  }
}

class HotelCard extends StatelessWidget {
  final Hotel hotel;

  const HotelCard({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Image.network(
                hotel.image ?? "",
                height: 150.0,
                width: double.infinity,
                fit: BoxFit.cover,
                scale: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 10),
                child: CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(.5),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                  width: double.infinity,
                  child: Row(
                    children: [
                      ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) =>
                            const Icon(
                          Icons.star_rate_rounded,
                          size: 15,
                          color: Colors.grey,
                        ),
                        itemCount: hotel.stars,
                      ),
                      const Text(
                        'Hotel ',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Text(
                  hotel.name ?? "",
                  style: const TextStyle(
                      fontSize: 23, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                SizedBox(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Container(
                          height: 20,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.green.shade800,
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                            child: Text(
                              '${hotel.reviewScore}',
                              style: const TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Text(
                          ' ${hotel.review}',
                          style: const TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.location_on,
                          size: 15,
                          color: Colors.black,
                        ),
                        Text(
                          '  ${hotel.address}',
                          // maxLines: 2,
                          style: const TextStyle(
                            fontSize: 14.0,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    )),
                const SizedBox(height: 5),
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 30,
                            width: 130,
                            decoration: BoxDecoration(
                                color: Colors.blue.shade100,
                                borderRadius: BorderRadius.circular(5)),
                            child: const Center(
                              child: Text(
                                ' Our Lowest Price',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(children: [
                            Text(
                              '\$ ${hotel.price}  ',
                              style: const TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 19, 153, 26)),
                            ),
                            const Spacer(),
                            const Text(
                              "View Deal",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.black,
                            ),
                          ]),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Renaissance",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                            ),
                          )
                        ]),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "More Prices",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15.0,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
