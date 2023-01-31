import 'package:flutter/material.dart';
import 'package:news_app2/cubit/news_app_cubit.dart';
import 'package:news_app2/network/dio.dart';
import 'package:news_app2/utlits/themes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var cubit = NewsAppCubit.get(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "News App",
          style: Theme.of(context).textTheme.bodyText1,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          SizedBox(
            width: 15,
          ),
          IconButton(
            onPressed: () {
              NewsAppCubit.get(context).changeThemeData();
            },
            icon: Icon(Icons.brightness_2_rounded),
          ),
        ],
      ),
      body: cubit.Screens[cubit.CurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: cubit.bottomItems,
        currentIndex: cubit.CurrentIndex,
        onTap: (index) {
          cubit.changeItem(index);
        },
      ),
    );
  }
}
