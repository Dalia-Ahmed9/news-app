// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:news_app2/cubit/news_app_cubit.dart';
import 'package:news_app2/network/Cash_helper.dart';
import 'package:news_app2/network/dio.dart';
import 'package:news_app2/screens/home_screen.dart';
import 'package:news_app2/utlits/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await CashHelper.init();

  var isDark = CashHelper.getData(Key: "isDark");
  runApp(MyApp(true));
}

class MyApp extends StatelessWidget {
  final bool isDark;
  MyApp(this.isDark);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => NewsAppCubit()
          ..getBuisness()
          ..changeThemeData(shardvalue: isDark),
        child: BlocConsumer<NewsAppCubit, NewsAppState>(
          listener: (context, state) {},
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: NewsAppCubit.get(context).isDark
                  ? darkthememode(context)
                  : lightthememode(context),
              home: HomeScreen(),
            );
          },
        ));
  }
}
