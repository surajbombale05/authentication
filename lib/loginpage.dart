import 'package:demo/signuppage.dart';
import 'package:demo/uihelper.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN PAGE"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            UiHelper.CustomTextFormField(_emailController,"Email",Icons.email, false),
            SizedBox(height: 10,),
            UiHelper.CustomTextFormField(_passwordController,"PassWord",Icons.password, true),
            SizedBox(height: 10,),
            UiHelper.CustomButton((){
              Navigator.push(context, MaterialPageRoute(builder:(context) => SignUp(),));
            },"Login"),
          
          ]),
        ),
      ),
    );
  }
}