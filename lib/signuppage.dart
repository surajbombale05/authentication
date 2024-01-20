import 'package:demo/myhome.dart';
import 'package:demo/uihelper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  Future<void> signUp(String email, String password) async {
    if (email == "" || password == "") {
      UiHelper.CustomAlertBox(context, "Email and password cannot be null!");
    } else {
      try {
        await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password)
            .then((value) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Myhome()));
        });
      } on FirebaseAuthException catch (ex) {
        return UiHelper.CustomAlertBox(context, ex.code.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SIGN UP PAGE"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UiHelper.CustomTextFormField(_emailController, "Email", Icons.email, false),
              SizedBox(height: 10,),
              UiHelper.CustomTextFormField(_passwordController, "Password", Icons.password, true),
              SizedBox(height: 10,),
              UiHelper.CustomButton(() {
                signUp(_emailController.text.toString(), _passwordController.text.toString());
              }, "Sign up"),
            ],
          ),
        ),
      ),
    );
  }
}
