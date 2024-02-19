import 'package:doctor_guide/cubit/guide_cubit.dart';
import 'package:doctor_guide/view/screens/specialties_screen1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DoctorCubit(),
      child: ScreenUtilInit(
        designSize: Size(MediaQuery.of(context).size.width,
            MediaQuery.of(context).size.height),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme:
                ColorScheme.fromSeed(seedColor: const Color(0xFF18FFFF)),
            scaffoldBackgroundColor: const Color.fromARGB(255, 129, 172, 131),
            useMaterial3: false,
          ),
          home: const SpecialtiesScreen(),
        ),
      ),
    );
  }
}
