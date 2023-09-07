import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learnathing/common/bottomnavigation.dart';
import 'package:learnathing/common/cutomtesxfield.dart';
import 'package:learnathing/features/auth/service/authservice.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final TextEditingController  _usernamecontroller = TextEditingController();
  final TextEditingController  _emailcontroller = TextEditingController();
  final TextEditingController  _passswordcontroller = TextEditingController();

  final signupkey = GlobalKey<FormState>();

  final AuthService authService = AuthService();

  void signup(){
    authService.signup(context: context,
        username: _usernamecontroller.text, email: _emailcontroller.text,
        password: _passswordcontroller.text);
  }

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [


              CustomTextField(controller: _usernamecontroller , hintext: "Username"),
              SizedBox(height: 10,),

              CustomTextField(controller: _emailcontroller , hintext: "Email"),
              SizedBox(height: 10,),

              CustomTextField(controller:  _passswordcontroller, hintext: "Password"),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Forgot password", style: TextStyle(color: Colors.lightBlue),)
                ],
              ),
                SizedBox(height: 10,),
              Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    style:ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(12.0))),
                        minimumSize: Size(
                            double.infinity, 50),
                        primary: Colors.green),
                    onPressed: () async {
                      setState(() {
                        isLoading = true;
                      });
                      if(signupkey.currentState!.validate()){
                        // login();
                        signup();
                        //Navigator.of(context).push(MaterialPageRoute(builder: (_) => BottomNavigation()));
                      }
                      await Future.delayed(const Duration(seconds: 50));
                      setState(() {
                        isLoading = false;
                      });
                    },
                    child: (isLoading)
                        ? const SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 1.5,
                        ))

                        : const Text('Sign up'),
// ),

                  )),
              SizedBox(height: 15,),
              Align(
                alignment: Alignment.center ,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: "Already have an account?\n", ),
                      TextSpan(text: "Sign Up", style: TextStyle(color: Colors.lightBlue))

                    ]
                  ),
                )
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text("L.A.T", style:TextStyle(color: Colors.grey)),
              )

            ],
          ),
        ),
      )
    );
  }
}
