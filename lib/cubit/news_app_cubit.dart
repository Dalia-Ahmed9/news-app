import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_app2/network/Cash_helper.dart';
import 'package:news_app2/network/dio.dart';
import 'package:news_app2/screens/SettingScreen.dart';
import 'package:news_app2/screens/buisness_screen.dart';
import 'package:news_app2/screens/science_screen.dart';
import 'package:news_app2/screens/sports_screen.dart';

part 'news_app_state.dart';

class NewsAppCubit extends Cubit<NewsAppState> {
  NewsAppCubit() : super(NewsAppInitial());
  static NewsAppCubit get(context) => BlocProvider.of(context);

  int CurrentIndex = 0;

  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(icon: Icon(Icons.business), label: "buisness"),
    BottomNavigationBarItem(icon: Icon(Icons.sports), label: "sports"),
    BottomNavigationBarItem(icon: Icon(Icons.science), label: "cience"),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: "settings"),
  ];

  List<Widget> Screens = [
    BuisnessScreen(),
    SportsScreen(),
    ScienceScreen(),
    SettingsScreen(),
  ];

  void changeItem(index) {
    if (index == 1) getSports();
    if (index == 2) getScience();
    CurrentIndex = index;
    emit(BottomNavBar());
  }

  List<dynamic> buisness = [];
  List<dynamic> Sports = [];
  List<dynamic> Science = [];
  void getBuisness() {
    emit(LoadbuisnessScreen());

    DioHelper.getData(path: 'top-headlines', Query: {
      'country': 'us',
      'category': 'business',
      'apiKey': 'b4eddfb7c41c4d7981bb02910e98463b',
    }).then((value) {
      buisness = value.data['articles'];
      print(buisness);
      emit(LoadingbuisnessDataSuccess());
    }).catchError(
      (error) {
        print(error.toString());
        emit(LoadingbuisnessDataError());
      },
    );
  }

//Sports
  void getSports() {
    emit(LoadSportScreen());

    if (Sports.length == 0) {
      DioHelper.getData(path: 'everything', Query: {
        'q': 'tesla',
        'from': '2022-12-05&sortBy=publishedAt',
        'apiKey': 'b4eddfb7c41c4d7981bb02910e98463b',
      }).then((value) {
        Sports = value.data['articles'];
        print(Sports);
        emit(LoadingSportDataSuccess());
      }).catchError(
        (error) {
          print(error.toString());
          emit(LoadingSportDataError());
        },
      );
    } else {
      emit(LoadingSportDataSuccess());
    }
  }

//Science
  void getScience() {
    emit(LoadSportScreen());

    if (Science.length == 0) {
      DioHelper.getData(path: 'everything', Query: {
        'q': 'apple',
        'from': '2023-01-05&to=2023-01-05',
        'sortBy': 'popularity',
        'apiKey': 'b4eddfb7c41c4d7981bb02910e98463b',
      }).then((value) {
        Science = value.data['articles'];
        print(Science);
        emit(LoadingSportDataSuccess());
      }).catchError(
        (error) {
          print(error.toString());
          emit(LoadingSportDataError());
        },
      );
    } else {
      emit(LoadingScienceDataSuccess());
    }
  }

  //theme data

  bool isDark = false;
  void changeThemeData({bool? shardvalue}) {
    if (shardvalue != null) {
      isDark = shardvalue;
      emit(changethemeMode());
    } else {
      isDark = !isDark;
      CashHelper.setData(Key: 'isDark', value: isDark)
          .then((value) => emit(changethemeMode()));
    }
  }
}
