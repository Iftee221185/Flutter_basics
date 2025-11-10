import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailcontroller=TextEditingController();
  final passwordcontroller=TextEditingController();
  bool showSpinner=false;

  FirebaseAuth auth=FirebaseAuth.instance;
  User? user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Authentication"),
      ),
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                    onPressed: () async{
                      setState(() {
                        showSpinner=true;
                      });
                      try{
                        UserCredential userCredential =await auth.signInWithEmailAndPassword
                          (
                            email: emailcontroller.text,
                            password: passwordcontroller.text,
                        );
                        user=userCredential.user;
                        if(user!=null) {
                          Navigator.pushNamed(context, 'profile');
                        }
                        setState(() {
                          showSpinner=false;
                        });
                      }
                      on FirebaseAuthException catch(e){
                        if(e.code=='user-not-found')
                          {
                            Fluttertoast.showToast(msg: "No user found for the email");
                          //  print('No user found for the email');
                            setState(() {
                              showSpinner=false;
                            });
                          }
                        else if(e.code=='wrong-password'){
                          Fluttertoast.showToast(msg: "wrong password provided");
                        //  print('wrong password provided');
                          setState(() {
                            showSpinner=false;
                          });
                        }
                      }
                      catch(e)
                      {
                        print(e);
                      }

                    },
                    minWidth: 200.0,
                    height: 42.0,
                  child: Text('sign In',style: TextStyle(
                    color: Colors.white,
                  ),),
                ),
              ),
            ),
            SizedBox(height: 8.0,),
            InkWell(
              child: Text('Register',style: TextStyle(
                color: Colors.blue,
              ),),
              onTap: (){
                Navigator.pushNamed(context, 'register');
              },
            )
          ],
        ),
      ),
    );
  }
}
