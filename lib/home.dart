import 'package:flutter/material.dart';
import 'package:gadicare/car_services.dart';
import 'package:gadicare/model/services_category.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Color> lightColors = [
    Color(0xFFFFF8E1), // Light Yellow
    Color(0xFFE1F5FE), // Light Blue
    Color(0xFFF1F8E9), // Light Green
    Color(0xFFFFEBEE), // Light Pink
    Color(0xFFF3E5F5), // Light Purple
  ];
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Services>(context, listen: false);
    return Scaffold(
      appBar: appBar(),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                searchBar(),
                const SizedBox(height: 10),
                Text(
                  'Service Categories',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                serviceCategory(),
                const SizedBox(height: 10),
                discountCard(),
                const SizedBox(height: 10),
                Text(
                  'Popular Services',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(height: 10),
                popularServices(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget popularServices() {
    return SizedBox(
      height: 270,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 270,
              height: 230, // optional
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                // fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                    child: Image.asset('assets/car-rep.jpg', fit: BoxFit.cover),
                  ),
                  Positioned(
                    left: 10,
                    top: 10,
                    child: Container(
                      width: 95,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          Text('4.9(3.5K)'),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    top: 160,
                    child: Text(
                      'Standard Car Service',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    top: 190,
                    child: Row(
                      children: [
                        Icon(Icons.watch_later, size: 14, color: Colors.grey),
                        SizedBox(width: 10),
                        Text('6 hours', style: TextStyle(color: Colors.grey)),
                        SizedBox(width: 150),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 12,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget discountCard() {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              width: 270,
              height: 190,
              decoration: BoxDecoration(
                color: lightColors[index % lightColors.length],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Spacer(),
                        Container(
                          width: 100,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.only(),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'GURUGRAM',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Text(
                      '#Trending',
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Quick Car Wash In 30 Min',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'Not Available',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          '50% OFF',
                          style: TextStyle(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget serviceCategory() {
    final provider = Provider.of<Services>(context, listen: false);
    return SizedBox(
      height: 110,
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                GestureDetector(
                  onTap:(){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Carwash()));
                  },
                  child:Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.shade200,
                  ),
                  child: Center(
                    child: ClipOval(
                      child: Image.asset(
                        'assets/black_carbg.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                ),
                 ),
                SizedBox(height: 6),
                Text(
                  "Services",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget searchBar() {
    return Container(
      width: 370,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 211, 209, 209),
            blurRadius: 1,
            spreadRadius: 1,
            offset: Offset(1, 1),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search car services...',
          hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
          suffixIcon: Icon(Icons.search, color: Colors.red),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(20),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }

  PreferredSizeWidget appBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      title: ListTile(
        leading: Icon(Icons.pin_drop, size: 30, color: Colors.red),
        title: Text('Hello! Car Owner 👋'),
        subtitle: Text('Shawiji Itatw, Kharadi Road'),
        trailing: Column(
          children: [
            Image.asset(height: 30, 'assets/black_carbg.png'),
            Text('HARRIER', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
