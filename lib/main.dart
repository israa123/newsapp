import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/constants/MyBlocObserver.dart';
import 'package:news/layout/news_app/news_layout.dart';
import 'package:news/shared/networl/dio_helper.dart';

class MyBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    // TODO: implement onEvent
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    // TODO: implement onChange
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    // TODO: implement onChange
  }
}

void main() {
  MyBlocObserver();
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: Colors.deepOrange),
          primarySwatch: Colors.deepOrange,
          primaryColor: Colors.deepOrange,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.deepOrange,
              elevation: 20.0),
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
              backwardsCompatibility: false,
              systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarIconBrightness: Brightness.dark,
                  statusBarColor: Colors.white),
              backgroundColor: Colors.white,
              elevation: 0.0,
              titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
              iconTheme: IconThemeData(color: Colors.black)),
        ),
        darkTheme: ThemeData(scaffoldBackgroundColor: Colors.black26),
        themeMode: ThemeMode.light,
        home: NewsLayout());
  }
}
