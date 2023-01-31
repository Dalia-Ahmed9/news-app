part of 'news_app_cubit.dart';

@immutable
abstract class NewsAppState {}

class NewsAppInitial extends NewsAppState {}

class BottomNavBar extends NewsAppState {}

//buisness

class LoadbuisnessScreen extends NewsAppState {}

class LoadingbuisnessDataSuccess extends NewsAppState {}

class LoadingbuisnessDataError extends NewsAppState {}

//Sports

class LoadSportScreen extends NewsAppState {}

class LoadingSportDataSuccess extends NewsAppState {}

class LoadingSportDataError extends NewsAppState {}

//Science

class LoadScienceScreen extends NewsAppState {}

class LoadingScienceDataSuccess extends NewsAppState {}

class LoadingScienceDataError extends NewsAppState {}

//theme mode

class changethemeMode extends NewsAppState {}
