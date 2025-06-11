import 'package:flutter/material.dart';
import 'package:gadicare/navigation.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child:SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('LOGIN',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),  
              Text('Enter your mobile number to get OTP'),
              const SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Mobile Number',
                  floatingLabelStyle: TextStyle(color: Colors.blue),
                  hintText: '+91',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Navigation()));
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text('Get OTP',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
              

