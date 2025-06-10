import 'package:flutter/material.dart';

class MyVehical extends StatefulWidget{
  const MyVehical({super.key});
  @override
  State<MyVehical>createState()=> _MyVehical();
}

class _MyVehical extends State<MyVehical>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Colors.white,
        title:Text('My Vehicles',style:TextStyle(
          fontWeight:FontWeight.w500
        )),
        actions:[
          Container(
            // width:110,
            height:40,
            decoration:BoxDecoration(
              borderRadius:BorderRadius.circular(10),
              color:Colors.blue.shade100
            ),
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children:[
                  Icon(Icons.add_circle),
                  const SizedBox(width: 5,),
                  Text('Add Vehicle')
                ]    
              ),
            )
          ),
          SizedBox(width:10),
        ]
      ),
      body:SizedBox(
        width:double.infinity,
        height:double.infinity,
        child:Column(
          children:[
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
              Image.asset(
                width:100,
                height:100,
                'assets/bike.png'),
                const SizedBox(width: 20,),
                Image.asset(
                width:100,
                height:100,
                'assets/car.png'),
            ],),
            const SizedBox(height: 10,),
            Text("Look like you haven't added any vehicles yet!",style:TextStyle(fontWeight:FontWeight.bold,fontSize:15)),
            const SizedBox(height: 10,),
            Text('Add you vehicle now to access our full range of services',style:TextStyle(fontSize:13))
          ]
        )
      )
    );
  }
}