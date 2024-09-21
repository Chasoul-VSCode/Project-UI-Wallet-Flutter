import 'package:flutter/material.dart';
import 'package:mobiledev_per2/views/dashboard/chashpay_view.dart';
import 'package:mobiledev_per2/views/dashboard/dashboard_view.dart';
import 'package:mobiledev_per2/views/dashboard/profile_view.dart'; // Import MarketPage

class TabMenu extends StatefulWidget {
  const TabMenu({super.key});

  @override
  _TabMenuState createState() => _TabMenuState();
}

class _TabMenuState extends State<TabMenu> with SingleTickerProviderStateMixin {
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
            Tab(icon: Icon(Icons.dashboard), text: "Dashboard"),
            Tab(icon: Icon(Icons.payment), text: "ChashPay"),
            Tab(icon: Icon(Icons.people_alt_sharp), text: "Profile"),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: const [
              DashboardView(), // Menampilkan MarketPage di sini
              ChashpayView(),
              ProfileView(),
            ],
          ),
        ),
      ],
    );
  }
}
