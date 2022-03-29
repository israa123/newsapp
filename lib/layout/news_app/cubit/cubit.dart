import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/layout/news_app/cubit/state.dart';
import 'package:news/modules/busnisses/busniss_screen.dart';
import 'package:news/modules/sciences/science_screen.dart';
import 'package:news/modules/settings/setting_screen.dart';
import 'package:news/modules/sports/sport_screen.dart';

import '../../../shared/networl/dio_helper.dart';

class NewsCubit extends Cubit<NewsStates> {
  NewsCubit() : super(NewsInitialState());
  static NewsCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Busniess'),
    BottomNavigationBarItem(icon: Icon(Icons.sports), label: 'Sports'),
    BottomNavigationBarItem(icon: Icon(Icons.science), label: 'Science'),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
  ];
  List<Widget> screens = [
    BusinessScreen(),
    SportScreen(),
    ScienceScreen(),
    SettingScreen()
  ];
  void changeBottomNavBar(int index) {
    currentIndex = index;
    emit(NewsBottomNavState());
  }

  List<dynamic> business = [];
  void getBusiness() {
    emit(NewsLoadingState());
    DioHelper.getData(url: 'v2/top-headlines', query: {
      'country': 'eg',
      'category': 'business',
      'apikey': '44d5e641f4864817a886d0b9b09ebf51'
    }).then((value) {
      // print(value.data['articles'][0]['title']);
      business = value.data['articles'];
      print(business[0]['title']);
      emit(NewsGetBusniessSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(NewsGetBusniessErorrState(error));
    });
  }
}
