import 'package:flutter/material.dart';

class BasicCar extends StatefulWidget {
  const BasicCar({super.key});

  @override
  State<BasicCar> createState() => _BasicCar();
}

class _BasicCar extends State<BasicCar> {
  @override
  Widget build(BuildContext context) {
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
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                Text('Package Iclude',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    custContainer(
                      'assets/purifier.png',
                      'Air Filter \nCleaning',
                    ),
                    custContainer(
                      'assets/battery.png',
                      'Battery \nwater \nTop-Up',
                    ),
                    custContainer(
                      'assets/coolant.png',
                      'coolant\nTop \nUp(200 ml)',
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    custContainer('assets/oil.png', 'Engine oil Replacement'),
                    custContainer('assets/check-list.png', 'Car Inspiction'),
                    custContainer(
                      'assets/purifier.png',
                      'oil filter Replacement',
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    custContainer('assets/heater.png', 'Heater'),
                    custContainer('assets/wiper.png', 'Wiper Fluid'),
                    custContainer('assets/interiar.png', 'Interior'),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
      persistentFooterButtons: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              Text(
                '₹2,600',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  // Your action here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Button color
                  // foregroundColor: Colors.white, // Text color
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 4,
                ),
                child: const Text(
                  'Add To Cart',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color:Colors.white),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget custContainer(String img, String text) {
    return Container(
      width: 100,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            alignment: Alignment.center,
            child: Image.asset(img, height: 30, width: 30),
          ),
          const SizedBox(height: 10),
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  PreferredSizeWidget appBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: Icon(Icons.arrow_circle_left_rounded),
      ),
      title: Text(
        'Basic Car Service',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      ),
      actions: [
        Column(
          children: [
            Image.asset(height: 30, 'assets/black_carbg.png'),
            Text('HARRIER', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
