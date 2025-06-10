import 'package:flutter/material.dart';

class HelpSupport extends StatefulWidget {
  const HelpSupport({super.key});
  @override
  State<HelpSupport> createState() => _HelpSupport();
}

class _HelpSupport extends State<HelpSupport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Help & Support',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(7),
            child: Column(children:[
                const SizedBox(height: 10,),
                Container(
                  width:350,
                  // height:150,
                  decoration:BoxDecoration(
                    border:Border.all(
                      color:Colors.grey
                    ),
                    borderRadius:BorderRadius.circular(10)
                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                      Text('Get 24/7 Roadside Assistance',style:TextStyle(
                        fontWeight:FontWeight.bold,
                      )),
                      const SizedBox(height: 10,),
                      Row(children: [
                        Text('CALL US :8197 852 852'),
                        Spacer(),
                        Container(
                          width:70,
                          height:45,
                          decoration:BoxDecoration(
                            color:Colors.blue.shade200,
                            borderRadius:BorderRadius.circular(10)
                          ),
                          child:Icon(Icons.phone)
                        )
                      ],)
                    ],),
                  )
                ),
                const SizedBox(height: 10,),
                Container(
                  width:350,
                  // height:150,
                  decoration:BoxDecoration(
                    border:Border.all(
                      color:Colors.grey
                    ),
                    borderRadius:BorderRadius.circular(10)
                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                      const SizedBox(height: 10,),
                      Row(children: [
                        Text('Escalations',style: TextStyle(
                          fontWeight:FontWeight.bold
                        ),),
                        Spacer(),
                        Container(
                          width:70,
                          height:45,
                          decoration:BoxDecoration(
                            color:Colors.blue.shade200,
                            borderRadius:BorderRadius.circular(10)
                          ),
                          child:Icon(Icons.message)
                        )
                      ],)
                    ],),
                  )
                )
            ]
          ),
          ),
        ),
      ),
    );
  }
}
