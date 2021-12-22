import 'package:flutter/material.dart';
import 'package:untitled/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });

      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Image.asset("assets/images/login_image.png",fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text("Welcome $name",style:const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold
                  ),

                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
                    child: Column(children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter UserName",
                          labelText: "UserName",
                        ),
                        validator: (value) {
                          if(value!.isEmpty){
                            return "Username cannn't be empty";

                          }
                          return null;
                        },
                        onChanged: (value){
                          name = value;
                          setState(() {
                          });

                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),
                        validator: (value) {
                          if(value!.isEmpty){
                            return "Password cannn't be empty";
                          }
                          else if(value.length < 6){
                            return "Password length should be atleast  6";
                          }
                          return null;
                        },
                      ),
                    ],),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Material(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(changeButton ? 20 : 8),
                    child: InkWell(

                      onTap: ()  =>moveToHome(context),


                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: 50,
                        width: changeButton ? 50 : 150,
                        alignment: Alignment.center,
                        child: changeButton
                            ? Icon(
                          Icons.done,
                          color: Colors.red,
                        )
                            :Text("Login",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),
                        ),
                        //decoration: BoxDecoration(color: Colors.blue,
                        // borderRadius: BorderRadius.circular(changeButton ? 20 : 8),
                        // ),
                      ),
                    ),
                  ),

                ],

              ),
            )
        )
    );

  }
}
