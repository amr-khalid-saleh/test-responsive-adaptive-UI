import 'package:flutter/material.dart';
import 'package:test_responsive_and_adaptive_ui/views/widgets/cutom_drawer.dart';
import 'package:test_responsive_and_adaptive_ui/views/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xffDBDBDB),
      drawer: CustomDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
          icon: Icon(Icons.menu, color: Colors.white),
        ),
      ),
      body: HomeViewBody(),
    );
  }
}
