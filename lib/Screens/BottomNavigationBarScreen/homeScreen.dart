import 'package:flutter/material.dart';
import 'package:turkpark_app/Screens/TabBarScreen/hizmetlerScreen.dart';
import 'package:turkpark_app/Screens/TabBarScreen/sektorlerScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu, size: 40),
                      style: ButtonStyle(),
                      color: Color.fromRGBO(48, 213, 200, 1),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.notifications, size: 40),
                      style: ButtonStyle(),
                      color: Color.fromRGBO(48, 213, 200, 1),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/logoTurkpark.webp')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 300,
                height: 45,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromRGBO(48, 213, 200, 1), width: 2),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                ),
                child: TabBar(
                  controller: _tabController,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromRGBO(48, 213, 200, 1),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Color.fromRGBO(48, 213, 200, 1),
                  tabs: [
                    Tab(text: 'Hizmetler'),
                    Tab(text: 'Sektörler'),
                  ],
                ),
              ),
            ),
            // tab bar view here
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  HizmetlerScreen(),
                  SektorlerScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
