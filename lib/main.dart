import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotelsgo/shared/bloc/cubit.dart';
import 'package:hotelsgo/shared/network/remote/dio_helper.dart';

import 'screens/hotel_list.dart';
import 'shared/bloc_observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();

  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HotelCubit()..getHotelData(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HotelListScreen(),
      ),
    );
  }
}
