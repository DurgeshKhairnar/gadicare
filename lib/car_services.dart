import 'package:flutter/material.dart';
import 'package:gadicare/basic_car.dart';
import 'package:gadicare/model/carservices.dart';
import 'package:provider/provider.dart';

class Carwash extends StatefulWidget {
  const Carwash({super.key});
  @override
  State<Carwash> createState() => _Carwash();
}

class _Carwash extends State<Carwash> {
  
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Servicescar>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Car Wash', style: TextStyle(fontWeight: FontWeight.w500)),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(padding: EdgeInsets.all(8), 
        child: Column(
          
          children: [
             Expanded(child: ListView.builder(
              itemCount:2,
              itemBuilder: (context,index){
              return  GestureDetector(
                onTap:(){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) =>BasicCar()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width:double.infinity,
                    height:170,
                    decoration:BoxDecoration(
                      border:Border.all(color:Colors.grey.shade300),
                    ),
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children:[
                          ListTile(
                            leading:Image.asset('assets/gar.jpg',),
                            title:Text('Basic car Service',style:TextStyle(
                              fontWeight:FontWeight.bold
                            )),
                            subtitle:Text('₹ 499',style:TextStyle(
                              fontWeight:FontWeight.bold,
                              fontSize:15
                            )),
                            
                          ),
                          SizedBox(height: 10,),
                          Text('* Every 5000 kms/ 3 months'),
                          Text('* Take 4 Hours'),
                         
                        ]
                      ),
                    )
                  ),
                ),
              );
          
             }),)
          ],)),
      ),
    );
  }
}
