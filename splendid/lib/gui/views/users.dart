import 'package:flutter/material.dart';
import 'package:splendid/gui/widgets/global/apppage.dart';

class Users extends StatefulWidget {
  const Users({Key? key}) : super(key: key);

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  @override
  Widget build(BuildContext context) {
    return const AppPage(content: Text("Users"));
  }
}
