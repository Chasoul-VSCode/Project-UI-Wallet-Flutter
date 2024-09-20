import 'package:flutter/material.dart';

class TabMenu extends StatefulWidget {
  const TabMenu({super.key});

  @override
  _TabMenuState createState() => _TabMenuState();
}

class _TabMenuState extends State with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          tabs: const [
            Tab(icon: Icon(Icons.shop_2), text: "Market"),
            Tab(icon: Icon(Icons.payment), text: "ChashPay"),
            Tab(icon: Icon(Icons.people_alt_sharp), text: "Profile"),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: const [
              Center(child: Text('Not Found Product')),
              Center(child: Text('ChashPay')),
              Center(child: Text('Profile')),
            ],
          ),
        ),
      ],
    );
  }
}
