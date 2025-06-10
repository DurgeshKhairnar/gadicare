import 'package:flutter/material.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({super.key});
  @override
  State<OrderHistory> createState() => _OrderHistory();
}

class _OrderHistory extends State<OrderHistory> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget customTab({required int index, required String title, required IconData icon}) {
    bool isSelected = _tabController.index == index;
    return  Padding(
    padding: const EdgeInsets.only(bottom: 8.0), // ⬅ Add spacing below tab
    child:  Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: isSelected ? Colors.blue : Colors.grey,
        ),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon,
              size: 12, color: isSelected ? Colors.blue : Colors.grey),
          const SizedBox(width: 5),
          Text(
            title,
            style: TextStyle(
              fontSize: 11,
              color: isSelected ? Colors.blue : Colors.grey,
            ),
          ),
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Order History',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.blue, // Remove default line
            tabs: [
              customTab(index: 0, title: "Ongoing", icon:Icons.watch_later_outlined),
              customTab(index: 1, title: "Completed",icon:Icons.verified),
              customTab(index: 2, title: "Cancelled",icon:Icons.cancel),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const [
            Center(child: Text("Ongoing Orders")),
            Center(child: Text("Completed Orders")),
            Center(child: Text("Cancelled Orders")),
          ],
        ),
      ),
    );
  }
}
