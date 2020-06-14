import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:skype_clone/models/user.dart';
import 'package:skype_clone/resources/firebase_repository.dart';

class SearchSrceen extends StatefulWidget {
  @override
  _SearchSrceenState createState() => _SearchSrceenState();
}

class _SearchSrceenState extends State<SearchSrceen> {
  FirebaseRepository _repository = FirebaseRepository();

  List<User> userList;
  String query = "";
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _repository.getCurrentUser().then((FirebaseUser user){

    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
