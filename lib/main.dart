import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:skype_clone/resources/firebase_repository.dart';
import 'package:skype_clone/srceens/home_srceen.dart';
import 'package:skype_clone/srceens/login_srceen.dart';
import 'package:skype_clone/srceens/search_srceen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppSate();
}

class _MyAppSate extends State<MyApp> {
  FirebaseRepository _repository = FirebaseRepository();

  @override
  Widget build(BuildContext context) {
    _repository.singOut();
    return MaterialApp(
        title: "Skype Clone",
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/search_srceen':(context)=> SearchSrceen(),
        },
        home: FutureBuilder(
          future: _repository.getCurrentUser(),
          builder: (context, AsyncSnapshot<FirebaseUser> snapshot) {
            if (snapshot.hasData) {
              return HomeSrceen();
            } else {
              return LoginSrceen();
            }
          },
        ));
  }
}
