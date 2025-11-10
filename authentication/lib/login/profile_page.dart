import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  FirebaseAuth auth=FirebaseAuth.instance;
  User? user;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(auth.currentUser!=null)
      {
        user=auth.currentUser;
      }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('profile'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.pushNamed(context,'/');
              },
              icon: Icon(Icons.logout),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Name: ${user?.displayName}',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: 16.0,),
            Text(
              'Email: ${user?.email}',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],

        ),
      ),
    );
  }
}
