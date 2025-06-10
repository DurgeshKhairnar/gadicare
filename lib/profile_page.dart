import 'package:flutter/material.dart';
import 'package:gadicare/edit_profile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: Text('Profile'),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(8),
            children: [
             ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage:Image.asset('assets/logo.png').image,
              ),
              title: Text('user61631'),
              subtitle: Text('+91 9876543210'),
             ),
             const SizedBox(height: 10,),
             Row(
              children: [
                Expanded(child: card('assets/car.png', 'My Vehicle','/myvehicl')),
                const SizedBox(width: 10,),
                Expanded(child: card('assets/subcription.png', 'My Subscription','/subscription')),
              ],
             ),
              const SizedBox(height: 10,),
             Row(
              children: [
                Expanded(child: card('assets/checklist.png', 'My Order','/myorder')),
                const SizedBox(width: 10,),
                Expanded(child: card('assets/support.png', 'Help & Support','/helpsupport')),
              ],
             ),
             const SizedBox(height: 10,),
             iconListTile('assets/edit.png', 'Edit your Profile'),
              const SizedBox(height: 10,),
             iconListTile('assets/condition.png', 'Terms & Conditions'),
              const SizedBox(height: 10,),
             iconListTile('assets/insurance.png', 'Privacy Policy'),
              const SizedBox(height: 10,),
             iconListTile('assets/newspaper.png', 'News'),
              const SizedBox(height: 10,),
             iconListTile('assets/location.png', 'Save address'),
             const SizedBox(height: 10,),
             iconListTile('assets/sos.png', 'SOS'),
             const SizedBox(height: 10,),
             iconListTile('assets/info.png', 'About us'),
             const SizedBox(height: 10,),
             iconListTile('assets/log-out.png', 'About us'),
             const SizedBox(height: 50,),
             iconListTile('assets/delete.png', 'Delete Account', Colors.red),
            ],
          ),
        ),
    );
  }
  
  Widget card(String img, String text,String root){
    return GestureDetector(
            onTap:(){
              Navigator.pushNamed(context, root);
            },
            child: Container(
              height:60,
              decoration:BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child:listTile(img, text),
             ) ,);
         
  }

  Widget iconListTile(String img, String text,[ Color? color]){
    return ListTile(
      leading: Image.asset(img, height: 30,),
      title: Text(text,overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: color),),
      trailing: IconButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditProfile(),));
        },
        icon: Icon(Icons.arrow_forward_ios, size: 15,color: color,),
      ),
    );
  }

  Widget listTile(String img, String text,){
    return ListTile(
      leading: Image.asset(img, height: 30,),
      title: Text(text,overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
    );
  }
}
