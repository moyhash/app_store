import 'package:app_store/constants.dart';
import 'package:app_store/widgets/home/home_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: homeAppBar(),
      body: const HomeBody(),
    );
  }


  AppBar homeAppBar() {
    return AppBar(
      elevation: 0,
      title: const Text('Electrical Marcket'),
      centerTitle: true,
    actions: [
      IconButton(icon: const Icon(Icons.menu), onPressed: (){},
      ),
    ],
    );
  }
}
