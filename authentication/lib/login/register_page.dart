import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final namecontroller=TextEditingController();
  final emailcontroller=TextEditingController();
  final passwordcontroller=TextEditingController();
  bool showSpinner=false;

  FirebaseAuth auth=FirebaseAuth.instance;
  User? user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: namecontroller,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  hintText: "enter Name",
                  contentPadding: EdgeInsets.symmetric(vertical:10.0,horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  )
              ),
            ),
            SizedBox(height: 8.0,),
            TextFormField(
              controller: emailcontroller,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: "enter Email",
                  contentPadding: EdgeInsets.symmetric(vertical:10.0,horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  )
              ),
            ),
            SizedBox(height: 8.0,),
            TextFormField(
              controller: passwordcontroller,
              textAlign: TextAlign.center,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "enter password",
                  contentPadding: EdgeInsets.symmetric(vertical:10.0,horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  )
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Material(
                elevation: 5.0,
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: () async {
                    setState(() {
                      showSpinner=true;
                    });
                    try{
                      UserCredential userCredential= await auth.createUserWithEmailAndPassword(
                      email: emailcontroller.text,
                      password: passwordcontroller.text,
                      );
                      user=userCredential.user;
                      await user!.updateDisplayName(namecontroller.text);
                      await user!.reload();
                      user=auth.currentUser;
                      if(user!=null)
                      {
                           Navigator.pushNamed(context, "profile");
                      }
                      setState((){
                          showSpinner=false;
                        });
                      }
                      on FirebaseAuthException catch(e) {
                        if (e.code == 'weak-password') {
                          Fluttertoast.showToast(msg: "the password is too weak");
                         // print('the password is too weak');
                          setState(() {
                            showSpinner=false;
                          });
                        }
                        else if (e.code == 'email-already-in-use') {
                          Fluttertoast.showToast(msg: "the email is already in use");
                         // print('the email is already in use'  );
                          setState(() {
                            showSpinner=false;
                          });
                        }
                      }
                    catch(e) {
                      print(e);
                    }


                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text('Register',style: TextStyle(
                    color: Colors.white,
                  ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
